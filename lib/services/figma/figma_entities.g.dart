// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figma_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FigmaResponse _$$_FigmaResponseFromJson(Map<String, dynamic> json) =>
    _$_FigmaResponse(
      variables: (json['variables'] as List<dynamic>)
          .map((e) => FigmaVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
      collections: (json['collections'] as List<dynamic>)
          .map((e) => FigmaCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FigmaResponseToJson(_$_FigmaResponse instance) =>
    <String, dynamic>{
      'variables': instance.variables,
      'collections': instance.collections,
    };

_$_Mode _$$_ModeFromJson(Map<String, dynamic> json) => _$_Mode(
      modeId: json['modeId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ModeToJson(_$_Mode instance) => <String, dynamic>{
      'modeId': instance.modeId,
      'name': instance.name,
    };

_$_Variable _$$_VariableFromJson(Map<String, dynamic> json) => _$_Variable(
      id: json['id'] as String,
      name: json['name'] as String,
      resolvedType:
          $enumDecode(_$FigmaVariableTypeEnumMap, json['resolvedType']),
      valuesByMode: json['valuesByMode'] as Map<String, dynamic>,
      variableCollectionId: json['variableCollectionId'] as String,
    );

Map<String, dynamic> _$$_VariableToJson(_$_Variable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'resolvedType': _$FigmaVariableTypeEnumMap[instance.resolvedType]!,
      'valuesByMode': instance.valuesByMode,
      'variableCollectionId': instance.variableCollectionId,
    };

const _$FigmaVariableTypeEnumMap = {
  FigmaVariableType.float: 'FLOAT',
  FigmaVariableType.color: 'COLOR',
  FigmaVariableType.string: 'STRING',
  FigmaVariableType.boolean: 'BOOLEAN',
};

_$_Collection _$$_CollectionFromJson(Map<String, dynamic> json) =>
    _$_Collection(
      name: json['name'] as String,
      id: json['id'] as String,
      defaultModeId: json['defaultModeId'] as String,
      modes: (json['modes'] as List<dynamic>)
          .map((e) => FigmaMode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CollectionToJson(_$_Collection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'defaultModeId': instance.defaultModeId,
      'modes': instance.modes,
    };
