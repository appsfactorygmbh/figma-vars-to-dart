import 'dart:async';

import 'package:args/command_runner.dart';
import 'package:figma_vars_to_dart/services/logger/logger.dart';

import '../services/services.dart';

class DownloadImagesFromArgsCommand extends Command {
  final FigmaService figmaApi;
  final ParserService parser;
  final WriterService writer;
  final CodeGeneratorService generator;
  final LoggerService logger;

  DownloadImagesFromArgsCommand({
    required this.figmaApi,
    required this.parser,
    required this.writer,
    required this.generator,
    required this.logger,
  }) {
    argParser.addOption(
      'fileId',
      mandatory: true,
      help: 'The id of the figma file, can be found in the URL.',
    );
    argParser.addOption(
      'token',
      mandatory: true,
      help: 'Your Figma personal access token.',
    );
    argParser.addOption(
      'outputFolder',
      mandatory: false,
      defaultsTo: 'assets',
      help: 'Folder for the downloaded images, defaults to /assets.',
    );
    argParser.addOption(
      'scale',
      mandatory: false,
      defaultsTo: '1.0,2.0,3.0',
      help:
          'Specify the scales of images to download (comma-separated), must be a number between 0.01 and 4. Defaults to 1.0,2.0,3.0. Warning: The "scale" argument is ignored for SVG format.',
    );
    argParser.addOption('format',
        mandatory: false,
        defaultsTo: 'png',
        allowed: ['jpg', 'png', 'svg'],
        help: 'Format of the downloaded images, defaults to png.');
    argParser.addOption('section',
        mandatory: false,
        defaultsTo: 'APP_ASSET_',
        help:
            r'Specify sections to download (comma-separated), defaults to all APP_ASSET_$section sections.');
    argParser.addFlag('force',
        defaultsTo: false,
        help:
            'Force download the images even if they already exist, defaults to false.');
  }

  @override
  String get description =>
      'Download images from Figma sections using command line args.';

  @override
  String get name => 'download-images';

  @override
  FutureOr? run() async {
    final args = argResults;
    if (args == null) {
      return;
    }

    final fileId = args['fileId'] as String;
    final token = args['token'] as String;
    final outputFolder = args['outputFolder'] as String;
    final imageFormat = args['format'] as String;
    final scales = args['scale'] as String;
    final forceDownload = args['force'] as bool;

    List<String> sectionsToDownload = [];
    if ((args['section'] as String) != 'APP_ASSET_') {
      sectionsToDownload =
          (args['section'] as String).split(',').map((e) => e.trim()).toList();
    }

    List<double> scalesList = handleScales(imageFormat, scales);

    logger.log('\n📥 Fetching Figma file...');
    var fileData = await figmaApi.fetchFigmaFile(fileId: fileId, token: token);

    logger.log("📂 Identifying 'APP_ASSET_' sections...");
    var assets = figmaApi.findAppAssets(fileData, sectionsToDownload);

    if (assets.isEmpty) {
      logger.log("❌ No 'APP_ASSET_' sections found.");
      return;
    }

    for (var sectionName in assets.keys) {
      logger.log('\n📥 Processing images for section: $sectionName');

      List<Map<String, String>> assetList =
          assets[sectionName]!; // Full asset list (id + name)
      List<String> nodeIds =
          assetList.map((e) => e['id']!).toList(); // Extract only IDs

      // Loop over the scales list, fetch and download images for each scale
      for (var scale in scalesList) {
        logger.log('  🔄 Fetching ${scale}x images...');

        var imageUrls = await figmaApi.fetchImageUrls(
          fileId: fileId,
          token: token,
          nodeIds: nodeIds,
          imageFormat: imageFormat,
          scale: scale,
        );

        await figmaApi.downloadImages(
            parentDirectory: outputFolder,
            imageUrls: imageUrls,
            sectionName: sectionName,
            imageFormat: imageFormat,
            scale: scale,
            assets: assetList,
            forceDownload: forceDownload);
      }
    }

    logger.log('\n🎉 All images downloaded successfully!');
  }

  List<double> handleScales(String format, String scales) {
    // 'scale' is a comma-separated string
    final scalesList = scales.split(',').map((e) {
      final parsedValue = double.tryParse(e.toString().trim());
      if (parsedValue == null) {
        throw ArgumentError('Invalid scale value "$e". Must be a number.');
      }
      if (parsedValue < 0.01 || parsedValue > 4.0) {
        throw ArgumentError('Scale value must be between 0.01 and 4.0.');
      } else {
        return parsedValue;
      }
    }).toList();

    // If format is SVG, enforce scale = 1.0
    if (format == 'svg') {
      if (scalesList.length != 1 ||
          (scalesList.length == 1 && scalesList.first != 1.0)) {
        logger.log(
            '\n❗ Warning: The "scale" argument is ignored for SVG format. Using scale = 1.0.');
      }
      return [1.0]; // Override with 1.0
    } else {
      return scalesList;
    }
  }
}
