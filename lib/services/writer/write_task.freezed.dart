// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WriteTask {
  String get filePath => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WriteTaskCopyWith<WriteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteTaskCopyWith<$Res> {
  factory $WriteTaskCopyWith(WriteTask value, $Res Function(WriteTask) then) =
      _$WriteTaskCopyWithImpl<$Res, WriteTask>;
  @useResult
  $Res call({String filePath, String content});
}

/// @nodoc
class _$WriteTaskCopyWithImpl<$Res, $Val extends WriteTask>
    implements $WriteTaskCopyWith<$Res> {
  _$WriteTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WriteTaskCopyWith<$Res> implements $WriteTaskCopyWith<$Res> {
  factory _$$_WriteTaskCopyWith(
          _$_WriteTask value, $Res Function(_$_WriteTask) then) =
      __$$_WriteTaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filePath, String content});
}

/// @nodoc
class __$$_WriteTaskCopyWithImpl<$Res>
    extends _$WriteTaskCopyWithImpl<$Res, _$_WriteTask>
    implements _$$_WriteTaskCopyWith<$Res> {
  __$$_WriteTaskCopyWithImpl(
      _$_WriteTask _value, $Res Function(_$_WriteTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? content = null,
  }) {
    return _then(_$_WriteTask(
      null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WriteTask implements _WriteTask {
  const _$_WriteTask(this.filePath, this.content);

  @override
  final String filePath;
  @override
  final String content;

  @override
  String toString() {
    return 'WriteTask(filePath: $filePath, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WriteTask &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WriteTaskCopyWith<_$_WriteTask> get copyWith =>
      __$$_WriteTaskCopyWithImpl<_$_WriteTask>(this, _$identity);
}

abstract class _WriteTask implements WriteTask {
  const factory _WriteTask(final String filePath, final String content) =
      _$_WriteTask;

  @override
  String get filePath;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_WriteTaskCopyWith<_$_WriteTask> get copyWith =>
      throw _privateConstructorUsedError;
}
