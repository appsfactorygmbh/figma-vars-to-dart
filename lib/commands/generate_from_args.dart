import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/command_runner.dart';

import '../services/services.dart';

class GenerateFromArgsCommand extends Command {
  final FigmaService figmaApi;
  final ParserService parser;
  final WriterService writer;

  GenerateFromArgsCommand({
    required this.figmaApi,
    required this.parser,
    required this.writer,
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
    final json = await figmaApi.getVariables(token: token, fileId: fileId);
    await _maybeSaveDebugJson(jsonOutput, writer, json);

    print('Parsing json response');
    final collections = parser.parse(json['meta']);

    print('Converting variables to Dart');
    final parentDirectory = dartOutputFolder.split(Platform.pathSeparator).last;

    final tasks = CodeGeneratorService().generateCode(
      collections,
      parentDirectory,
    );
    final tasksUpdated = tasks
        .map(
          (task) => task.copyWith(
            filePath: '$dartOutputFolder/${task.filePath}',
          ),
        )
        .toList();

    await writer.write(tasksUpdated);
  }

  Future<void> _maybeSaveDebugJson(
    String? jsonOutput,
    WriterService writer,
    Map<String, dynamic> json,
  ) async {
    if (jsonOutput != null) {
      print('Saving raw data to $jsonOutput');
      await writer.write([
        WriteTask(
          jsonOutput,
          jsonEncode(json),
        ),
      ]);
    }
  }
}
