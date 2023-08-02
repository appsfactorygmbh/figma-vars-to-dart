import 'package:freezed_annotation/freezed_annotation.dart';

part 'entities.freezed.dart';
part 'entities.g.dart';

enum VariableType {
  @JsonValue('FLOAT')
  float,
  @JsonValue('COLOR')
  color,
  @JsonValue('STRING')
  string,
  @JsonValue('BOOLEAN')
  boolean,
}

@freezed
class Mode with _$Mode {
  const factory Mode({
    required String modeId,
    required String name,
  }) = _Mode;

  factory Mode.fromJson(Map<String, dynamic> json) => _$ModeFromJson(json);
}

@freezed
class Variable with _$Variable {
  const factory Variable({
    required String id,
    required String name,
    required VariableType resolvedType,
    required Map<String, dynamic> valuesByMode,
    required String variableCollectionId,
  }) = _Variable;
  factory Variable.fromJson(Map<String, dynamic> json) =>
      _$VariableFromJson(json);
}

@freezed
class Collection with _$Collection {
  const factory Collection({
    required String name,
    required String id,
    required String defaultModeId,
    required List<Mode> modes,
  }) = _Collection;
  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
