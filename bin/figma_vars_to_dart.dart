import 'package:args/command_runner.dart';
import 'package:figma_vars_to_dart/commands/generate_from_args.dart';
import 'package:figma_vars_to_dart/services/services.dart';

Future<void> main(List<String> arguments) async {
  final writer = WriterService();
  final figmaApi = FigmaService();
  final parser = ParserService();

  CommandRunner(
    'figma_vars_to_dart',
    'Generate Dart code out of Figma variables',
  )
    ..addCommand(
      GenerateFromArgsCommand(
        figmaApi: figmaApi,
        parser: parser,
        writer: writer,
      ),
    )
    ..run(arguments);
}
