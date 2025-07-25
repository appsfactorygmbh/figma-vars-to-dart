import 'dart:async';

import 'package:args/command_runner.dart';
import 'package:figma_vars_to_dart/services/logger/logger.dart';

import '../services/services.dart';

class DownloadIconsFromArgsCommand extends Command {
  final FigmaService figmaApi;
  final ParserService parser;
  final WriterService writer;
  final CodeGeneratorService generator;
  final LoggerService logger;

  DownloadIconsFromArgsCommand({
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
      help: 'Folder for the downloaded icons, defaults to /assets.',
    );
    argParser.addOption(
      'scale',
      mandatory: false,
      defaultsTo: '1.0,2.0,3.0',
      help:
          'Specify the scales of icons to download (comma-separated), must be a number between 0.01 and 4. Defaults to 1.0,2.0,3.0. Warning: The "scale" argument is ignored for SVG format.',
    );
    argParser.addOption('format',
        mandatory: false,
        defaultsTo: 'png',
        allowed: ['jpg', 'png', 'svg'],
        help: 'Format of the downloaded icons, defaults to png.');
    argParser.addOption('frame',
        mandatory: false,
        defaultsTo: 'APP_ASSET_',
        help:
            r'Specify frames to download (comma-separated), defaults to all APP_ASSET_$frame frames.');
    argParser.addFlag('force',
        defaultsTo: false,
        help:
            'Force download the icons even if they already exist, defaults to false.');
  }

  @override
  String get description =>
      'Download icons from Figma sections using command line args.';

  @override
  String get name => 'download-icons';

  @override
  FutureOr? run() async {
    final args = argResults;
    if (args == null) {
      return;
    }

    final fileId = args['fileId'] as String;
    final token = args['token'] as String;
    final outputFolder = args['outputFolder'] as String;
    final iconsFormat = args['format'] as String;
    final scales = args['scale'] as String;
    final forceDownload = args['force'] as bool;
    final frame = args['frame'] as String;

    List<String> sectionsToDownload = [];
    if (frame != 'APP_ASSET_') {
      sectionsToDownload = frame.split(',').map((e) => e.trim()).toList();
    }

    List<double> scalesList = handleScales(iconsFormat, scales);

    logger.log('\n📥 Fetching Figma file...');
    final fileData =
        await figmaApi.fetchFigmaFile(fileId: fileId, token: token);

    logger.log("📂 Identifying 'APP_ASSET_' frames...");
    final assets = figmaApi.findAppIcons(fileData, sectionsToDownload);

    if (assets.isEmpty) {
      logger.log("❌ No 'APP_ASSET_' frames found.");
      return;
    }

    for (var frameName in assets.keys) {
      logger.log('\n📥 Processing icons for frames: $frameName');

      List<Map<String, String>> assetList =
          assets[frameName]!; // Full asset list (id + name)
      List<String> nodeIds =
          assetList.map((e) => e['id']!).toList(); // Extract only IDs

      // Loop over the scales list, fetch and download images for each scale
      for (var scale in scalesList) {
        logger.log('  🔄 Fetching ${scale}x images...');

        final imageUrls = await figmaApi.fetchImageUrls(
          fileId: fileId,
          token: token,
          nodeIds: nodeIds,
          imageFormat: iconsFormat,
          scale: scale,
        );

        await figmaApi.downloadImages(
            parentDirectory: outputFolder,
            imageUrls: imageUrls,
            sectionName: frameName,
            imageFormat: iconsFormat,
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
