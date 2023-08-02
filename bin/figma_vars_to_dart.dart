import 'dart:convert';

import 'package:args/args.dart';
import 'package:figma_vars_to_dart/services/services.dart';

Future<void> main(List<String> arguments) async {
  final argParser = ArgParser();
  final writer = WriterService();
  final figmaApi = FigmaService();
  final parser = ParserService();

  argParser.addOption('fileId', mandatory: true);
  argParser.addOption('token', mandatory: true);
  argParser.addOption('jsonOutputFile', mandatory: false);
  argParser.addOption('dartOutputFolder', mandatory: false);

  final argsParsed = argParser.parse(arguments);

  final fileId = argsParsed['fileId'] as String;
  final token = argsParsed['token'] as String;
  final jsonOutput = argsParsed['jsonOutputFile'] as String?;
  final dartOutputFolder =
      (argsParsed['dartOutputFolder'] as String?) ?? 'lib/gen';

  print('Fetching the file $fileId from Figma');
  final json = await figmaApi.getVariables(token: token, fileId: fileId);
  await saveDebugJson(jsonOutput, writer, json);

  print('Parsing json response');
  final (collections, variables) = parser.parse(json['meta']);

  print('Converting variables to Dart');
  final tasks = CodeGeneratorService().generateCode(variables, collections);
  final tasksUpdated = tasks
      .map(
        (task) => task.copyWith(
          filePath: '$dartOutputFolder/${task.filePath}',
        ),
      )
      .toList();
  await writer.write(tasksUpdated);
}

Future<void> saveDebugJson(
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
