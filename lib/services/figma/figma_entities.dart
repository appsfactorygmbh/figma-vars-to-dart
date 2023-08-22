import 'package:freezed_annotation/freezed_annotation.dart';

part 'figma_entities.freezed.dart';
part 'figma_entities.g.dart';

enum FigmaVariableType {
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
class FigmaResponse with _$FigmaResponse {
  const factory FigmaResponse({
    required List<FigmaVariable> variables,
    required List<FigmaCollection> collections,
  }) = _FigmaResponse;

  factory FigmaResponse.fromJson(Map<String, dynamic> json) => _$FigmaResponseFromJson(json);
}

@freezed
class FigmaMode with _$FigmaMode {
  const factory FigmaMode({
    required String modeId,
    required String name,
  }) = _Mode;

  factory FigmaMode.fromJson(Map<String, dynamic> json) =>
      _$FigmaModeFromJson(json);
}

@freezed
class FigmaVariable with _$FigmaVariable {
  const factory FigmaVariable({
    required String id,
    required String name,
    required FigmaVariableType resolvedType,
    required Map<String, dynamic> valuesByMode,
    required String variableCollectionId,
  }) = _Variable;
  factory FigmaVariable.fromJson(Map<String, dynamic> json) =>
      _$FigmaVariableFromJson(json);
}

@freezed
class FigmaCollection with _$FigmaCollection {
  const factory FigmaCollection({
    required String name,
    required String id,
    required String defaultModeId,
    required List<FigmaMode> modes,
  }) = _Collection;
  factory FigmaCollection.fromJson(Map<String, dynamic> json) =>
      _$FigmaCollectionFromJson(json);
}
