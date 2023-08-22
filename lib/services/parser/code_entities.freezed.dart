// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CodeClass {
  String get fileName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Set<ClassField> get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CodeClassCopyWith<CodeClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeClassCopyWith<$Res> {
  factory $CodeClassCopyWith(CodeClass value, $Res Function(CodeClass) then) =
      _$CodeClassCopyWithImpl<$Res, CodeClass>;
  @useResult
  $Res call({String fileName, String name, Set<ClassField> fields});
}

/// @nodoc
class _$CodeClassCopyWithImpl<$Res, $Val extends CodeClass>
    implements $CodeClassCopyWith<$Res> {
  _$CodeClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? name = null,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Set<ClassField>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CodeClassCopyWith<$Res> implements $CodeClassCopyWith<$Res> {
  factory _$$_CodeClassCopyWith(
          _$_CodeClass value, $Res Function(_$_CodeClass) then) =
      __$$_CodeClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileName, String name, Set<ClassField> fields});
}

/// @nodoc
class __$$_CodeClassCopyWithImpl<$Res>
    extends _$CodeClassCopyWithImpl<$Res, _$_CodeClass>
    implements _$$_CodeClassCopyWith<$Res> {
  __$$_CodeClassCopyWithImpl(
      _$_CodeClass _value, $Res Function(_$_CodeClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? name = null,
    Object? fields = null,
  }) {
    return _then(_$_CodeClass(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Set<ClassField>,
    ));
  }
}

/// @nodoc

class _$_CodeClass implements _CodeClass {
  const _$_CodeClass(
      {required this.fileName,
      required this.name,
      required final Set<ClassField> fields})
      : _fields = fields;

  @override
  final String fileName;
  @override
  final String name;
  final Set<ClassField> _fields;
  @override
  Set<ClassField> get fields {
    if (_fields is EqualUnmodifiableSetView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_fields);
  }

  @override
  String toString() {
    return 'CodeClass(fileName: $fileName, name: $name, fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeClass &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, name,
      const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeClassCopyWith<_$_CodeClass> get copyWith =>
      __$$_CodeClassCopyWithImpl<_$_CodeClass>(this, _$identity);
}

abstract class _CodeClass implements CodeClass {
  const factory _CodeClass(
      {required final String fileName,
      required final String name,
      required final Set<ClassField> fields}) = _$_CodeClass;

  @override
  String get fileName;
  @override
  String get name;
  @override
  Set<ClassField> get fields;
  @override
  @JsonKey(ignore: true)
  _$$_CodeClassCopyWith<_$_CodeClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassField {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, VariableValue> get valuesByMode =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassFieldCopyWith<ClassField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassFieldCopyWith<$Res> {
  factory $ClassFieldCopyWith(
          ClassField value, $Res Function(ClassField) then) =
      _$ClassFieldCopyWithImpl<$Res, ClassField>;
  @useResult
  $Res call(
      {String name, String type, Map<String, VariableValue> valuesByMode});
}

/// @nodoc
class _$ClassFieldCopyWithImpl<$Res, $Val extends ClassField>
    implements $ClassFieldCopyWith<$Res> {
  _$ClassFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? valuesByMode = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      valuesByMode: null == valuesByMode
          ? _value.valuesByMode
          : valuesByMode // ignore: cast_nullable_to_non_nullable
              as Map<String, VariableValue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassFieldCopyWith<$Res>
    implements $ClassFieldCopyWith<$Res> {
  factory _$$_ClassFieldCopyWith(
          _$_ClassField value, $Res Function(_$_ClassField) then) =
      __$$_ClassFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String type, Map<String, VariableValue> valuesByMode});
}

/// @nodoc
class __$$_ClassFieldCopyWithImpl<$Res>
    extends _$ClassFieldCopyWithImpl<$Res, _$_ClassField>
    implements _$$_ClassFieldCopyWith<$Res> {
  __$$_ClassFieldCopyWithImpl(
      _$_ClassField _value, $Res Function(_$_ClassField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? valuesByMode = null,
  }) {
    return _then(_$_ClassField(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      valuesByMode: null == valuesByMode
          ? _value._valuesByMode
          : valuesByMode // ignore: cast_nullable_to_non_nullable
              as Map<String, VariableValue>,
    ));
  }
}

/// @nodoc

class _$_ClassField implements _ClassField {
  const _$_ClassField(
      {required this.name,
      required this.type,
      required final Map<String, VariableValue> valuesByMode})
      : _valuesByMode = valuesByMode;

  @override
  final String name;
  @override
  final String type;
  final Map<String, VariableValue> _valuesByMode;
  @override
  Map<String, VariableValue> get valuesByMode {
    if (_valuesByMode is EqualUnmodifiableMapView) return _valuesByMode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_valuesByMode);
  }

  @override
  String toString() {
    return 'ClassField(name: $name, type: $type, valuesByMode: $valuesByMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassField &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._valuesByMode, _valuesByMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type,
      const DeepCollectionEquality().hash(_valuesByMode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassFieldCopyWith<_$_ClassField> get copyWith =>
      __$$_ClassFieldCopyWithImpl<_$_ClassField>(this, _$identity);
}

abstract class _ClassField implements ClassField {
  const factory _ClassField(
      {required final String name,
      required final String type,
      required final Map<String, VariableValue> valuesByMode}) = _$_ClassField;

  @override
  String get name;
  @override
  String get type;
  @override
  Map<String, VariableValue> get valuesByMode;
  @override
  @JsonKey(ignore: true)
  _$$_ClassFieldCopyWith<_$_ClassField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VariableValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) hardcoded,
    required TResult Function(String className, String field) reference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? hardcoded,
    TResult? Function(String className, String field)? reference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? hardcoded,
    TResult Function(String className, String field)? reference,
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
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$HardcodedVariableValueCopyWithImpl<$Res>
    extends _$VariableValueCopyWithImpl<$Res, _$HardcodedVariableValue>
    implements _$$HardcodedVariableValueCopyWith<$Res> {
  __$$HardcodedVariableValueCopyWithImpl(_$HardcodedVariableValue _value,
      $Res Function(_$HardcodedVariableValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$HardcodedVariableValue(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HardcodedVariableValue implements HardcodedVariableValue {
  const _$HardcodedVariableValue(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'VariableValue.hardcoded(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HardcodedVariableValue &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HardcodedVariableValueCopyWith<_$HardcodedVariableValue> get copyWith =>
      __$$HardcodedVariableValueCopyWithImpl<_$HardcodedVariableValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) hardcoded,
    required TResult Function(String className, String field) reference,
  }) {
    return hardcoded(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? hardcoded,
    TResult? Function(String className, String field)? reference,
  }) {
    return hardcoded?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? hardcoded,
    TResult Function(String className, String field)? reference,
    required TResult orElse(),
  }) {
    if (hardcoded != null) {
      return hardcoded(text);
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
  const factory HardcodedVariableValue(final String text) =
      _$HardcodedVariableValue;

  String get text;
  @JsonKey(ignore: true)
  _$$HardcodedVariableValueCopyWith<_$HardcodedVariableValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReferencedVariableValueCopyWith<$Res> {
  factory _$$ReferencedVariableValueCopyWith(_$ReferencedVariableValue value,
          $Res Function(_$ReferencedVariableValue) then) =
      __$$ReferencedVariableValueCopyWithImpl<$Res>;
  @useResult
  $Res call({String className, String field});
}

/// @nodoc
class __$$ReferencedVariableValueCopyWithImpl<$Res>
    extends _$VariableValueCopyWithImpl<$Res, _$ReferencedVariableValue>
    implements _$$ReferencedVariableValueCopyWith<$Res> {
  __$$ReferencedVariableValueCopyWithImpl(_$ReferencedVariableValue _value,
      $Res Function(_$ReferencedVariableValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? className = null,
    Object? field = null,
  }) {
    return _then(_$ReferencedVariableValue(
      null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReferencedVariableValue implements ReferencedVariableValue {
  const _$ReferencedVariableValue(this.className, this.field);

  @override
  final String className;
  @override
  final String field;

  @override
  String toString() {
    return 'VariableValue.reference(className: $className, field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferencedVariableValue &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, className, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferencedVariableValueCopyWith<_$ReferencedVariableValue> get copyWith =>
      __$$ReferencedVariableValueCopyWithImpl<_$ReferencedVariableValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) hardcoded,
    required TResult Function(String className, String field) reference,
  }) {
    return reference(className, field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? hardcoded,
    TResult? Function(String className, String field)? reference,
  }) {
    return reference?.call(className, field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? hardcoded,
    TResult Function(String className, String field)? reference,
    required TResult orElse(),
  }) {
    if (reference != null) {
      return reference(className, field);
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
  const factory ReferencedVariableValue(
      final String className, final String field) = _$ReferencedVariableValue;

  String get className;
  String get field;
  @JsonKey(ignore: true)
  _$$ReferencedVariableValueCopyWith<_$ReferencedVariableValue> get copyWith =>
      throw _privateConstructorUsedError;
}
