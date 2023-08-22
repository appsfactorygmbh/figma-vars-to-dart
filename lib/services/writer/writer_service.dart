import 'dart:io';

import 'writer.dart';

class WriterService {
  Future<void> write(List<WriteTask> tasks) async {
    for (final task in tasks) {
      final file = File(task.filePath);

      if (!file.existsSync()) {
        await file.create(recursive: true);
      }
      await file.writeAsString(task.content);
    }
  }
}
