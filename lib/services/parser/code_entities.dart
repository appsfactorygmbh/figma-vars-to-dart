import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_entities.freezed.dart';

@freezed
class CodeClass with _$CodeClass {
  const factory CodeClass({
    required String fileName,
    required String name,
    required Set<ClassField> fields,
  }) = _CodeClass;
}

@freezed
class ClassField with _$ClassField {
  const factory ClassField({
    required String name,
    required String type,
    required Map<String, VariableValue> valuesByMode,
  }) = _ClassField;
}

@freezed
sealed class VariableValue with _$VariableValue {
  const factory VariableValue.hardcoded(String text) = HardcodedVariableValue;
  const factory VariableValue.reference(String className, String field) =
      ReferencedVariableValue;
}
