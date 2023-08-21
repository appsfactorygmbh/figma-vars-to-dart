// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VariableValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hardcoded,
    required TResult Function() reference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hardcoded,
    TResult? Function()? reference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hardcoded,
    TResult Function()? reference,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HardcodedVariableValue value) hardcoded,
    required TResult Function(ReferencedVariableValue value) reference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HardcodedVariableValue value)? hardcoded,
    TResult? Function(ReferencedVariableValue value)? reference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HardcodedVariableValue value)? hardcoded,
    TResult Function(ReferencedVariableValue value)? reference,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableValueCopyWith<$Res> {
  factory $VariableValueCopyWith(
          VariableValue value, $Res Function(VariableValue) then) =
      _$VariableValueCopyWithImpl<$Res, VariableValue>;
}

/// @nodoc
class _$VariableValueCopyWithImpl<$Res, $Val extends VariableValue>
    implements $VariableValueCopyWith<$Res> {
  _$VariableValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HardcodedVariableValueCopyWith<$Res> {
  factory _$$HardcodedVariableValueCopyWith(_$HardcodedVariableValue value,
          $Res Function(_$HardcodedVariableValue) then) =
      __$$HardcodedVariableValueCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HardcodedVariableValueCopyWithImpl<$Res>
    extends _$VariableValueCopyWithImpl<$Res, _$HardcodedVariableValue>
    implements _$$HardcodedVariableValueCopyWith<$Res> {
  __$$HardcodedVariableValueCopyWithImpl(_$HardcodedVariableValue _value,
      $Res Function(_$HardcodedVariableValue) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HardcodedVariableValue implements HardcodedVariableValue {
  const _$HardcodedVariableValue();

  @override
  String toString() {
    return 'VariableValue.hardcoded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HardcodedVariableValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hardcoded,
    required TResult Function() reference,
  }) {
    return hardcoded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hardcoded,
    TResult? Function()? reference,
  }) {
    return hardcoded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hardcoded,
    TResult Function()? reference,
    required TResult orElse(),
  }) {
    if (hardcoded != null) {
      return hardcoded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HardcodedVariableValue value) hardcoded,
    required TResult Function(ReferencedVariableValue value) reference,
  }) {
    return hardcoded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HardcodedVariableValue value)? hardcoded,
    TResult? Function(ReferencedVariableValue value)? reference,
  }) {
    return hardcoded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HardcodedVariableValue value)? hardcoded,
    TResult Function(ReferencedVariableValue value)? reference,
    required TResult orElse(),
  }) {
    if (hardcoded != null) {
      return hardcoded(this);
    }
    return orElse();
  }
}

abstract class HardcodedVariableValue implements VariableValue {
  const factory HardcodedVariableValue() = _$HardcodedVariableValue;
}

/// @nodoc
abstract class _$$ReferencedVariableValueCopyWith<$Res> {
  factory _$$ReferencedVariableValueCopyWith(_$ReferencedVariableValue value,
          $Res Function(_$ReferencedVariableValue) then) =
      __$$ReferencedVariableValueCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReferencedVariableValueCopyWithImpl<$Res>
    extends _$VariableValueCopyWithImpl<$Res, _$ReferencedVariableValue>
    implements _$$ReferencedVariableValueCopyWith<$Res> {
  __$$ReferencedVariableValueCopyWithImpl(_$ReferencedVariableValue _value,
      $Res Function(_$ReferencedVariableValue) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReferencedVariableValue implements ReferencedVariableValue {
  const _$ReferencedVariableValue();

  @override
  String toString() {
    return 'VariableValue.reference()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferencedVariableValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hardcoded,
    required TResult Function() reference,
  }) {
    return reference();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hardcoded,
    TResult? Function()? reference,
  }) {
    return reference?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hardcoded,
    TResult Function()? reference,
    required TResult orElse(),
  }) {
    if (reference != null) {
      return reference();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HardcodedVariableValue value) hardcoded,
    required TResult Function(ReferencedVariableValue value) reference,
  }) {
    return reference(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HardcodedVariableValue value)? hardcoded,
    TResult? Function(ReferencedVariableValue value)? reference,
  }) {
    return reference?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HardcodedVariableValue value)? hardcoded,
    TResult Function(ReferencedVariableValue value)? reference,
    required TResult orElse(),
  }) {
    if (reference != null) {
      return reference(this);
    }
    return orElse();
  }
}

abstract class ReferencedVariableValue implements VariableValue {
  const factory ReferencedVariableValue() = _$ReferencedVariableValue;
}

Mode _$ModeFromJson(Map<String, dynamic> json) {
  return _Mode.fromJson(json);
}

/// @nodoc
mixin _$Mode {
  String get modeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModeCopyWith<Mode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModeCopyWith<$Res> {
  factory $ModeCopyWith(Mode value, $Res Function(Mode) then) =
      _$ModeCopyWithImpl<$Res, Mode>;
  @useResult
  $Res call({String modeId, String name});
}

/// @nodoc
class _$ModeCopyWithImpl<$Res, $Val extends Mode>
    implements $ModeCopyWith<$Res> {
  _$ModeCopyWithImpl(this._value, this._then);

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
abstract class _$$_ModeCopyWith<$Res> implements $ModeCopyWith<$Res> {
  factory _$$_ModeCopyWith(_$_Mode value, $Res Function(_$_Mode) then) =
      __$$_ModeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String modeId, String name});
}

/// @nodoc
class __$$_ModeCopyWithImpl<$Res> extends _$ModeCopyWithImpl<$Res, _$_Mode>
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
    return 'Mode(modeId: $modeId, name: $name)';
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

abstract class _Mode implements Mode {
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

Variable _$VariableFromJson(Map<String, dynamic> json) {
  return _Variable.fromJson(json);
}

/// @nodoc
mixin _$Variable {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  VariableType get resolvedType => throw _privateConstructorUsedError;
  Map<String, dynamic> get valuesByMode => throw _privateConstructorUsedError;
  String get variableCollectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariableCopyWith<Variable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableCopyWith<$Res> {
  factory $VariableCopyWith(Variable value, $Res Function(Variable) then) =
      _$VariableCopyWithImpl<$Res, Variable>;
  @useResult
  $Res call(
      {String id,
      String name,
      VariableType resolvedType,
      Map<String, dynamic> valuesByMode,
      String variableCollectionId});
}

/// @nodoc
class _$VariableCopyWithImpl<$Res, $Val extends Variable>
    implements $VariableCopyWith<$Res> {
  _$VariableCopyWithImpl(this._value, this._then);

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
              as VariableType,
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
abstract class _$$_VariableCopyWith<$Res> implements $VariableCopyWith<$Res> {
  factory _$$_VariableCopyWith(
          _$_Variable value, $Res Function(_$_Variable) then) =
      __$$_VariableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      VariableType resolvedType,
      Map<String, dynamic> valuesByMode,
      String variableCollectionId});
}

/// @nodoc
class __$$_VariableCopyWithImpl<$Res>
    extends _$VariableCopyWithImpl<$Res, _$_Variable>
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
              as VariableType,
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
  final VariableType resolvedType;
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
    return 'Variable(id: $id, name: $name, resolvedType: $resolvedType, valuesByMode: $valuesByMode, variableCollectionId: $variableCollectionId)';
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

abstract class _Variable implements Variable {
  const factory _Variable(
      {required final String id,
      required final String name,
      required final VariableType resolvedType,
      required final Map<String, dynamic> valuesByMode,
      required final String variableCollectionId}) = _$_Variable;

  factory _Variable.fromJson(Map<String, dynamic> json) = _$_Variable.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  VariableType get resolvedType;
  @override
  Map<String, dynamic> get valuesByMode;
  @override
  String get variableCollectionId;
  @override
  @JsonKey(ignore: true)
  _$$_VariableCopyWith<_$_Variable> get copyWith =>
      throw _privateConstructorUsedError;
}

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
mixin _$Collection {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get defaultModeId => throw _privateConstructorUsedError;
  List<Mode> get modes =>
      throw _privateConstructorUsedError; //locally computed fields
  List<Variable> get variables => throw _privateConstructorUsedError;
  List<Collection> get dependsOnCollections =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res, Collection>;
  @useResult
  $Res call(
      {String name,
      String id,
      String defaultModeId,
      List<Mode> modes,
      List<Variable> variables,
      List<Collection> dependsOnCollections});
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res, $Val extends Collection>
    implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

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
    Object? variables = null,
    Object? dependsOnCollections = null,
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
              as List<Mode>,
      variables: null == variables
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as List<Variable>,
      dependsOnCollections: null == dependsOnCollections
          ? _value.dependsOnCollections
          : dependsOnCollections // ignore: cast_nullable_to_non_nullable
              as List<Collection>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectionCopyWith<$Res>
    implements $CollectionCopyWith<$Res> {
  factory _$$_CollectionCopyWith(
          _$_Collection value, $Res Function(_$_Collection) then) =
      __$$_CollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      String defaultModeId,
      List<Mode> modes,
      List<Variable> variables,
      List<Collection> dependsOnCollections});
}

/// @nodoc
class __$$_CollectionCopyWithImpl<$Res>
    extends _$CollectionCopyWithImpl<$Res, _$_Collection>
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
    Object? variables = null,
    Object? dependsOnCollections = null,
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
              as List<Mode>,
      variables: null == variables
          ? _value._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as List<Variable>,
      dependsOnCollections: null == dependsOnCollections
          ? _value._dependsOnCollections
          : dependsOnCollections // ignore: cast_nullable_to_non_nullable
              as List<Collection>,
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
      required final List<Mode> modes,
      final List<Variable> variables = const [],
      final List<Collection> dependsOnCollections = const []})
      : _modes = modes,
        _variables = variables,
        _dependsOnCollections = dependsOnCollections;

  factory _$_Collection.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String defaultModeId;
  final List<Mode> _modes;
  @override
  List<Mode> get modes {
    if (_modes is EqualUnmodifiableListView) return _modes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modes);
  }

//locally computed fields
  final List<Variable> _variables;
//locally computed fields
  @override
  @JsonKey()
  List<Variable> get variables {
    if (_variables is EqualUnmodifiableListView) return _variables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variables);
  }

  final List<Collection> _dependsOnCollections;
  @override
  @JsonKey()
  List<Collection> get dependsOnCollections {
    if (_dependsOnCollections is EqualUnmodifiableListView)
      return _dependsOnCollections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependsOnCollections);
  }

  @override
  String toString() {
    return 'Collection(name: $name, id: $id, defaultModeId: $defaultModeId, modes: $modes, variables: $variables, dependsOnCollections: $dependsOnCollections)';
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
            const DeepCollectionEquality().equals(other._modes, _modes) &&
            const DeepCollectionEquality()
                .equals(other._variables, _variables) &&
            const DeepCollectionEquality()
                .equals(other._dependsOnCollections, _dependsOnCollections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      defaultModeId,
      const DeepCollectionEquality().hash(_modes),
      const DeepCollectionEquality().hash(_variables),
      const DeepCollectionEquality().hash(_dependsOnCollections));

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

abstract class _Collection implements Collection {
  const factory _Collection(
      {required final String name,
      required final String id,
      required final String defaultModeId,
      required final List<Mode> modes,
      final List<Variable> variables,
      final List<Collection> dependsOnCollections}) = _$_Collection;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$_Collection.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get defaultModeId;
  @override
  List<Mode> get modes;
  @override //locally computed fields
  List<Variable> get variables;
  @override
  List<Collection> get dependsOnCollections;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionCopyWith<_$_Collection> get copyWith =>
      throw _privateConstructorUsedError;
}
