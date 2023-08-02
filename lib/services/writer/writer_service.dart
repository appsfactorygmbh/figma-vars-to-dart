import 'dart:io';

import '../code_generator/code_generator.dart';

class WriterService {
  Future<void> write(List<WriteTask> tasks) async {
    for (final task in tasks) {
      final file = File(task.filePath);

      if (!file.existsSync()) {
        await file.create(recursive: true);
      }
      file.writeAsString(task.content);
    }
  }
}
