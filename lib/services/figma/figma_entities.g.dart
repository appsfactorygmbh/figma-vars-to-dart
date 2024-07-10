// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figma_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FigmaResponseImpl _$$FigmaResponseImplFromJson(Map<String, dynamic> json) =>
    _$FigmaResponseImpl(
      variables: (json['variables'] as List<dynamic>)
          .map((e) => FigmaVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
      collections: (json['collections'] as List<dynamic>)
          .map((e) => FigmaCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FigmaResponseImplToJson(_$FigmaResponseImpl instance) =>
    <String, dynamic>{
      'variables': instance.variables,
      'collections': instance.collections,
    };

_$ModeImpl _$$ModeImplFromJson(Map<String, dynamic> json) => _$ModeImpl(
      modeId: json['modeId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ModeImplToJson(_$ModeImpl instance) =>
    <String, dynamic>{
      'modeId': instance.modeId,
      'name': instance.name,
    };

_$VariableImpl _$$VariableImplFromJson(Map<String, dynamic> json) =>
    _$VariableImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      resolvedType:
          $enumDecode(_$FigmaVariableTypeEnumMap, json['resolvedType']),
      valuesByMode: json['valuesByMode'] as Map<String, dynamic>,
      variableCollectionId: json['variableCollectionId'] as String,
      remote: json['remote'] as bool,
    );

Map<String, dynamic> _$$VariableImplToJson(_$VariableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'resolvedType': _$FigmaVariableTypeEnumMap[instance.resolvedType]!,
      'valuesByMode': instance.valuesByMode,
      'variableCollectionId': instance.variableCollectionId,
      'remote': instance.remote,
    };

const _$FigmaVariableTypeEnumMap = {
  FigmaVariableType.float: 'FLOAT',
  FigmaVariableType.color: 'COLOR',
  FigmaVariableType.string: 'STRING',
  FigmaVariableType.boolean: 'BOOLEAN',
};

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      defaultModeId: json['defaultModeId'] as String,
      modes: (json['modes'] as List<dynamic>)
          .map((e) => FigmaMode.fromJson(e as Map<String, dynamic>))
          .toList(),
      remote: json['remote'] as bool,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'defaultModeId': instance.defaultModeId,
      'modes': instance.modes,
      'remote': instance.remote,
    };
