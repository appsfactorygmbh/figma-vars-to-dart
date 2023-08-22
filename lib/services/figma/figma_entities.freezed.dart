// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'figma_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FigmaResponse _$FigmaResponseFromJson(Map<String, dynamic> json) {
  return _FigmaResponse.fromJson(json);
}

/// @nodoc
mixin _$FigmaResponse {
  List<FigmaVariable> get variables => throw _privateConstructorUsedError;
  List<FigmaCollection> get collections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FigmaResponseCopyWith<FigmaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigmaResponseCopyWith<$Res> {
  factory $FigmaResponseCopyWith(
          FigmaResponse value, $Res Function(FigmaResponse) then) =
      _$FigmaResponseCopyWithImpl<$Res, FigmaResponse>;
  @useResult
  $Res call({List<FigmaVariable> variables, List<FigmaCollection> collections});
}

/// @nodoc
class _$FigmaResponseCopyWithImpl<$Res, $Val extends FigmaResponse>
    implements $FigmaResponseCopyWith<$Res> {
  _$FigmaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variables = null,
    Object? collections = null,
  }) {
    return _then(_value.copyWith(
      variables: null == variables
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as List<FigmaVariable>,
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<FigmaCollection>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FigmaResponseCopyWith<$Res>
    implements $FigmaResponseCopyWith<$Res> {
  factory _$$_FigmaResponseCopyWith(
          _$_FigmaResponse value, $Res Function(_$_FigmaResponse) then) =
      __$$_FigmaResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FigmaVariable> variables, List<FigmaCollection> collections});
}

/// @nodoc
class __$$_FigmaResponseCopyWithImpl<$Res>
    extends _$FigmaResponseCopyWithImpl<$Res, _$_FigmaResponse>
    implements _$$_FigmaResponseCopyWith<$Res> {
  __$$_FigmaResponseCopyWithImpl(
      _$_FigmaResponse _value, $Res Function(_$_FigmaResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variables = null,
    Object? collections = null,
  }) {
    return _then(_$_FigmaResponse(
      variables: null == variables
          ? _value._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as List<FigmaVariable>,
      collections: null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<FigmaCollection>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FigmaResponse implements _FigmaResponse {
  const _$_FigmaResponse(
      {required final List<FigmaVariable> variables,
      required final List<FigmaCollection> collections})
      : _variables = variables,
        _collections = collections;

  factory _$_FigmaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FigmaResponseFromJson(json);

  final List<FigmaVariable> _variables;
  @override
  List<FigmaVariable> get variables {
    if (_variables is EqualUnmodifiableListView) return _variables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variables);
  }

  final List<FigmaCollection> _collections;
  @override
  List<FigmaCollection> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  @override
  String toString() {
    return 'FigmaResponse(variables: $variables, collections: $collections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FigmaResponse &&
            const DeepCollectionEquality()
                .equals(other._variables, _variables) &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_variables),
      const DeepCollectionEquality().hash(_collections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FigmaResponseCopyWith<_$_FigmaResponse> get copyWith =>
      __$$_FigmaResponseCopyWithImpl<_$_FigmaResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FigmaResponseToJson(
      this,
    );
  }
}

abstract class _FigmaResponse implements FigmaResponse {
  const factory _FigmaResponse(
      {required final List<FigmaVariable> variables,
      required final List<FigmaCollection> collections}) = _$_FigmaResponse;

  factory _FigmaResponse.fromJson(Map<String, dynamic> json) =
      _$_FigmaResponse.fromJson;

  @override
  List<FigmaVariable> get variables;
  @override
  List<FigmaCollection> get collections;
  @override
  @JsonKey(ignore: true)
  _$$_FigmaResponseCopyWith<_$_FigmaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FigmaMode _$FigmaModeFromJson(Map<String, dynamic> json) {
  return _Mode.fromJson(json);
}

/// @nodoc
mixin _$FigmaMode {
  String get modeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FigmaModeCopyWith<FigmaMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigmaModeCopyWith<$Res> {
  factory $FigmaModeCopyWith(FigmaMode value, $Res Function(FigmaMode) then) =
      _$FigmaModeCopyWithImpl<$Res, FigmaMode>;
  @useResult
  $Res call({String modeId, String name});
}

/// @nodoc
class _$FigmaModeCopyWithImpl<$Res, $Val extends FigmaMode>
    implements $FigmaModeCopyWith<$Res> {
  _$FigmaModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modeId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      modeId: null == modeId
          ? _value.modeId
          : modeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModeCopyWith<$Res> implements $FigmaModeCopyWith<$Res> {
  factory _$$_ModeCopyWith(_$_Mode value, $Res Function(_$_Mode) then) =
      __$$_ModeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String modeId, String name});
}

/// @nodoc
class __$$_ModeCopyWithImpl<$Res> extends _$FigmaModeCopyWithImpl<$Res, _$_Mode>
    implements _$$_ModeCopyWith<$Res> {
  __$$_ModeCopyWithImpl(_$_Mode _value, $Res Function(_$_Mode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modeId = null,
    Object? name = null,
  }) {
    return _then(_$_Mode(
      modeId: null == modeId
          ? _value.modeId
          : modeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mode implements _Mode {
  const _$_Mode({required this.modeId, required this.name});

  factory _$_Mode.fromJson(Map<String, dynamic> json) => _$$_ModeFromJson(json);

  @override
  final String modeId;
  @override
  final String name;

  @override
  String toString() {
    return 'FigmaMode(modeId: $modeId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mode &&
            (identical(other.modeId, modeId) || other.modeId == modeId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, modeId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModeCopyWith<_$_Mode> get copyWith =>
      __$$_ModeCopyWithImpl<_$_Mode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModeToJson(
      this,
    );
  }
}

abstract class _Mode implements FigmaMode {
  const factory _Mode(
      {required final String modeId, required final String name}) = _$_Mode;

  factory _Mode.fromJson(Map<String, dynamic> json) = _$_Mode.fromJson;

  @override
  String get modeId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ModeCopyWith<_$_Mode> get copyWith => throw _privateConstructorUsedError;
}

FigmaVariable _$FigmaVariableFromJson(Map<String, dynamic> json) {
  return _Variable.fromJson(json);
}

/// @nodoc
mixin _$FigmaVariable {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  FigmaVariableType get resolvedType => throw _privateConstructorUsedError;
  Map<String, dynamic> get valuesByMode => throw _privateConstructorUsedError;
  String get variableCollectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FigmaVariableCopyWith<FigmaVariable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigmaVariableCopyWith<$Res> {
  factory $FigmaVariableCopyWith(
          FigmaVariable value, $Res Function(FigmaVariable) then) =
      _$FigmaVariableCopyWithImpl<$Res, FigmaVariable>;
  @useResult
  $Res call(
      {String id,
      String name,
      FigmaVariableType resolvedType,
      Map<String, dynamic> valuesByMode,
      String variableCollectionId});
}

/// @nodoc
class _$FigmaVariableCopyWithImpl<$Res, $Val extends FigmaVariable>
    implements $FigmaVariableCopyWith<$Res> {
  _$FigmaVariableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? resolvedType = null,
    Object? valuesByMode = null,
    Object? variableCollectionId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      resolvedType: null == resolvedType
          ? _value.resolvedType
          : resolvedType // ignore: cast_nullable_to_non_nullable
              as FigmaVariableType,
      valuesByMode: null == valuesByMode
          ? _value.valuesByMode
          : valuesByMode // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      variableCollectionId: null == variableCollectionId
          ? _value.variableCollectionId
          : variableCollectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariableCopyWith<$Res>
    implements $FigmaVariableCopyWith<$Res> {
  factory _$$_VariableCopyWith(
          _$_Variable value, $Res Function(_$_Variable) then) =
      __$$_VariableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      FigmaVariableType resolvedType,
      Map<String, dynamic> valuesByMode,
      String variableCollectionId});
}

/// @nodoc
class __$$_VariableCopyWithImpl<$Res>
    extends _$FigmaVariableCopyWithImpl<$Res, _$_Variable>
    implements _$$_VariableCopyWith<$Res> {
  __$$_VariableCopyWithImpl(
      _$_Variable _value, $Res Function(_$_Variable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? resolvedType = null,
    Object? valuesByMode = null,
    Object? variableCollectionId = null,
  }) {
    return _then(_$_Variable(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      resolvedType: null == resolvedType
          ? _value.resolvedType
          : resolvedType // ignore: cast_nullable_to_non_nullable
              as FigmaVariableType,
      valuesByMode: null == valuesByMode
          ? _value._valuesByMode
          : valuesByMode // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      variableCollectionId: null == variableCollectionId
          ? _value.variableCollectionId
          : variableCollectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Variable implements _Variable {
  const _$_Variable(
      {required this.id,
      required this.name,
      required this.resolvedType,
      required final Map<String, dynamic> valuesByMode,
      required this.variableCollectionId})
      : _valuesByMode = valuesByMode;

  factory _$_Variable.fromJson(Map<String, dynamic> json) =>
      _$$_VariableFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final FigmaVariableType resolvedType;
  final Map<String, dynamic> _valuesByMode;
  @override
  Map<String, dynamic> get valuesByMode {
    if (_valuesByMode is EqualUnmodifiableMapView) return _valuesByMode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_valuesByMode);
  }

  @override
  final String variableCollectionId;

  @override
  String toString() {
    return 'FigmaVariable(id: $id, name: $name, resolvedType: $resolvedType, valuesByMode: $valuesByMode, variableCollectionId: $variableCollectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Variable &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.resolvedType, resolvedType) ||
                other.resolvedType == resolvedType) &&
            const DeepCollectionEquality()
                .equals(other._valuesByMode, _valuesByMode) &&
            (identical(other.variableCollectionId, variableCollectionId) ||
                other.variableCollectionId == variableCollectionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, resolvedType,
      const DeepCollectionEquality().hash(_valuesByMode), variableCollectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariableCopyWith<_$_Variable> get copyWith =>
      __$$_VariableCopyWithImpl<_$_Variable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariableToJson(
      this,
    );
  }
}

abstract class _Variable implements FigmaVariable {
  const factory _Variable(
      {required final String id,
      required final String name,
      required final FigmaVariableType resolvedType,
      required final Map<String, dynamic> valuesByMode,
      required final String variableCollectionId}) = _$_Variable;

  factory _Variable.fromJson(Map<String, dynamic> json) = _$_Variable.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  FigmaVariableType get resolvedType;
  @override
  Map<String, dynamic> get valuesByMode;
  @override
  String get variableCollectionId;
  @override
  @JsonKey(ignore: true)
  _$$_VariableCopyWith<_$_Variable> get copyWith =>
      throw _privateConstructorUsedError;
}

FigmaCollection _$FigmaCollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
mixin _$FigmaCollection {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get defaultModeId => throw _privateConstructorUsedError;
  List<FigmaMode> get modes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FigmaCollectionCopyWith<FigmaCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigmaCollectionCopyWith<$Res> {
  factory $FigmaCollectionCopyWith(
          FigmaCollection value, $Res Function(FigmaCollection) then) =
      _$FigmaCollectionCopyWithImpl<$Res, FigmaCollection>;
  @useResult
  $Res call(
      {String name, String id, String defaultModeId, List<FigmaMode> modes});
}

/// @nodoc
class _$FigmaCollectionCopyWithImpl<$Res, $Val extends FigmaCollection>
    implements $FigmaCollectionCopyWith<$Res> {
  _$FigmaCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? defaultModeId = null,
    Object? modes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      defaultModeId: null == defaultModeId
          ? _value.defaultModeId
          : defaultModeId // ignore: cast_nullable_to_non_nullable
              as String,
      modes: null == modes
          ? _value.modes
          : modes // ignore: cast_nullable_to_non_nullable
              as List<FigmaMode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectionCopyWith<$Res>
    implements $FigmaCollectionCopyWith<$Res> {
  factory _$$_CollectionCopyWith(
          _$_Collection value, $Res Function(_$_Collection) then) =
      __$$_CollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String id, String defaultModeId, List<FigmaMode> modes});
}

/// @nodoc
class __$$_CollectionCopyWithImpl<$Res>
    extends _$FigmaCollectionCopyWithImpl<$Res, _$_Collection>
    implements _$$_CollectionCopyWith<$Res> {
  __$$_CollectionCopyWithImpl(
      _$_Collection _value, $Res Function(_$_Collection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? defaultModeId = null,
    Object? modes = null,
  }) {
    return _then(_$_Collection(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      defaultModeId: null == defaultModeId
          ? _value.defaultModeId
          : defaultModeId // ignore: cast_nullable_to_non_nullable
              as String,
      modes: null == modes
          ? _value._modes
          : modes // ignore: cast_nullable_to_non_nullable
              as List<FigmaMode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Collection implements _Collection {
  const _$_Collection(
      {required this.name,
      required this.id,
      required this.defaultModeId,
      required final List<FigmaMode> modes})
      : _modes = modes;

  factory _$_Collection.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String defaultModeId;
  final List<FigmaMode> _modes;
  @override
  List<FigmaMode> get modes {
    if (_modes is EqualUnmodifiableListView) return _modes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modes);
  }

  @override
  String toString() {
    return 'FigmaCollection(name: $name, id: $id, defaultModeId: $defaultModeId, modes: $modes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Collection &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.defaultModeId, defaultModeId) ||
                other.defaultModeId == defaultModeId) &&
            const DeepCollectionEquality().equals(other._modes, _modes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, defaultModeId,
      const DeepCollectionEquality().hash(_modes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectionCopyWith<_$_Collection> get copyWith =>
      __$$_CollectionCopyWithImpl<_$_Collection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionToJson(
      this,
    );
  }
}

abstract class _Collection implements FigmaCollection {
  const factory _Collection(
      {required final String name,
      required final String id,
      required final String defaultModeId,
      required final List<FigmaMode> modes}) = _$_Collection;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$_Collection.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get defaultModeId;
  @override
  List<FigmaMode> get modes;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionCopyWith<_$_Collection> get copyWith =>
      throw _privateConstructorUsedError;
}
