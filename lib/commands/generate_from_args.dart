import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:figma_vars_to_dart/services/logger/logger.dart';
import 'package:figma_vars_to_dart/services/parser/code_entities.dart';

import '../services/services.dart';

class GenerateFromArgsCommand extends Command {
  final FigmaService figmaApi;
  final ParserService parser;
  final WriterService writer;
  final CodeGeneratorService generator;
  final LoggerService logger;

  GenerateFromArgsCommand({
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
      'jsonOutputFile',
      mandatory: false,
      help:
          'Optional filepath to the raw response from figma, mostly used for debugging.',
    );
    argParser.addOption(
      'dartOutputFolder',
      mandatory: false,
      defaultsTo: 'lib/gen',
      help:
          'Folder location for the generated Dart files, defaults to lib/gen.',
    );
    argParser.addMultiOption(
      'collectionOverrides',
      defaultsTo: [],
      help: 'Optional comma-separated overrides.',
    );
    argParser.addMultiOption(
      'variableOverrides',
      defaultsTo: [],
    );
    argParser.addMultiOption(
      'excludedCollections',
      defaultsTo: [],
      help: 'Optional comma-separated list of collections to exclude',
    );
  }

  @override
  String get description =>
      'Generate code from Figma variables using command line args.';

  @override
  String get name => 'generate';

  @override
  FutureOr? run() async {
    final args = argResults;
    if (args == null) {
      return;
    }
    final fileId = args['fileId'] as String;
    final token = args['token'] as String;
    final jsonOutput = args['jsonOutputFile'] as String?;
    final dartOutputFolder = args['dartOutputFolder'] as String;

    final collectionOverrides = args['collectionOverrides'] as List<String>;
    final variableOverrides = args['variableOverrides'] as List<String>;
    final excludedCollections = args['excludedCollections'] as List<String>;

    logger.log('Fetching the file $fileId from Figma');
    final (response, rawResponse) = await figmaApi.getVariables(
      token: token,
      fileId: fileId,
      variableOverrides: parseOverrides(variableOverrides),
      collectionOverrides: parseOverrides(collectionOverrides),
      excludedCollections: excludedCollections.toSet(),
    );

    if (jsonOutput != null) {
      await writer.write([
        WriteTask(
          jsonOutput,
          jsonEncode(rawResponse),
        ),
      ]);
    }

    logger.log('Parsing json response');
    final classes = parser.parse(response);

    logger.log('Converting variables to Dart');
    await write(dartOutputFolder, classes);
  }

  Map<String, String> parseOverrides(List<String> input) {
    var separator = '=';
    return {
      for (final assignment in input)
        if (assignment.contains(separator))
          assignment.split(separator)[0]: assignment.split(separator)[1],
    };
  }

  Future<void> write(
    String dartOutputFolder,
    List<CodeClass> classes,
  ) async {
    final parentDirectory = dartOutputFolder
        .split(Platform.pathSeparator)
        .where((folder) => folder.isNotEmpty)
        .last;

    final files = generator.generateFiles(
      classes,
      parentDirectory,
    );
    final filesUpdated = files
        .map(
          (task) => task.copyWith(
            filePath: '$dartOutputFolder/${task.filePath}',
          ),
        )
        .toList();

    await writer.write(filesUpdated);
  }
}
