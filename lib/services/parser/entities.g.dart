// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      resolvedType: $enumDecode(_$VariableTypeEnumMap, json['resolvedType']),
      valuesByMode: json['valuesByMode'] as Map<String, dynamic>,
      variableCollectionId: json['variableCollectionId'] as String,
    );

Map<String, dynamic> _$$_VariableToJson(_$_Variable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'resolvedType': _$VariableTypeEnumMap[instance.resolvedType]!,
      'valuesByMode': instance.valuesByMode,
      'variableCollectionId': instance.variableCollectionId,
    };

const _$VariableTypeEnumMap = {
  VariableType.float: 'FLOAT',
  VariableType.color: 'COLOR',
  VariableType.string: 'STRING',
  VariableType.boolean: 'BOOLEAN',
};

_$_Collection _$$_CollectionFromJson(Map<String, dynamic> json) =>
    _$_Collection(
      name: json['name'] as String,
      id: json['id'] as String,
      defaultModeId: json['defaultModeId'] as String,
      modes: (json['modes'] as List<dynamic>)
          .map((e) => Mode.fromJson(e as Map<String, dynamic>))
          .toList(),
      variables: (json['variables'] as List<dynamic>?)
              ?.map((e) => Variable.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dependsOnCollections: (json['dependsOnCollections'] as List<dynamic>?)
              ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CollectionToJson(_$_Collection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'defaultModeId': instance.defaultModeId,
      'modes': instance.modes,
      'variables': instance.variables,
      'dependsOnCollections': instance.dependsOnCollections,
    };
