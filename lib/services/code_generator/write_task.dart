import 'package:freezed_annotation/freezed_annotation.dart';
part 'write_task.freezed.dart';

@freezed
class WriteTask with _$WriteTask {
  const factory WriteTask(
    String filePath,
    String content,
  ) = _WriteTask;
}

