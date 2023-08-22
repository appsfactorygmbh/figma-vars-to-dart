import 'package:args/command_runner.dart';

import 'package:figma_vars_to_dart/commands/commands.dart';
import 'package:figma_vars_to_dart/services/services.dart';

Future<void> main(List<String> arguments) async {
  final writer = WriterService();
  final figmaApi = FigmaService();
  final parser = ParserService();
  final generator = CodeGeneratorService();

  await (CommandRunner(
    'figma_vars_to_dart',
    'Generate Dart code out of Figma variables',
  )
    ..addCommand(
      GenerateFromArgsCommand(
        figmaApi: figmaApi,
        writer: writer,
        parser: parser,
        generator: generator,
      ),
    )
    ).run(arguments);
}
