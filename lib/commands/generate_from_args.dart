import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:figma_vars_to_dart/services/parser/code_entities.dart';

import '../services/services.dart';

class GenerateFromArgsCommand extends Command {
  final FigmaService figmaApi;
  final ParserService parser;
  final WriterService writer;
  final CodeGeneratorService generator;

  GenerateFromArgsCommand({
    required this.figmaApi,
    required this.parser,
    required this.writer,
    required this.generator,
  }) {
    argParser.addOption('fileId', mandatory: true);
    argParser.addOption('token', mandatory: true);
    argParser.addOption('jsonOutputFile', mandatory: false);
    argParser.addOption('dartOutputFolder',
        mandatory: false, defaultsTo: 'lib/gen');
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

    print('Fetching the file $fileId from Figma');
    final (response, rawResponse) = await figmaApi.getVariables(
      token: token,
      fileId: fileId,
    );

    if (jsonOutput != null) {
      await writer.write([
        WriteTask(
          jsonOutput,
          jsonEncode(rawResponse),
        ),
      ]);
    }

    print('Parsing json response');
    final classes = parser.parse(response);

    print('Converting variables to Dart');
    await write(dartOutputFolder, classes);
  }

  Future<void> write(
    String dartOutputFolder,
    List<CodeClass> classes,
  ) async {
    final parentDirectory = dartOutputFolder.split(Platform.pathSeparator).last;
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
