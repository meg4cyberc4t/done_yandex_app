// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateTaskDTO _$CreateTaskDTOFromJson(Map<String, dynamic> json) {
  return _CreateTaskDTO.fromJson(json);
}

/// @nodoc
mixin _$CreateTaskDTO {
  String get text => throw _privateConstructorUsedError;
  TaskImportance get importance => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTaskDTOCopyWith<CreateTaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskDTOCopyWith<$Res> {
  factory $CreateTaskDTOCopyWith(
          CreateTaskDTO value, $Res Function(CreateTaskDTO) then) =
      _$CreateTaskDTOCopyWithImpl<$Res>;
  $Res call(
      {String text, TaskImportance importance, DateTime? deadline, bool done});
}

/// @nodoc
class _$CreateTaskDTOCopyWithImpl<$Res>
    implements $CreateTaskDTOCopyWith<$Res> {
  _$CreateTaskDTOCopyWithImpl(this._value, this._then);

  final CreateTaskDTO _value;
  // ignore: unused_field
  final $Res Function(CreateTaskDTO) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as TaskImportance,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateTaskDTOCopyWith<$Res>
    implements $CreateTaskDTOCopyWith<$Res> {
  factory _$$_CreateTaskDTOCopyWith(
          _$_CreateTaskDTO value, $Res Function(_$_CreateTaskDTO) then) =
      __$$_CreateTaskDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text, TaskImportance importance, DateTime? deadline, bool done});
}

/// @nodoc
class __$$_CreateTaskDTOCopyWithImpl<$Res>
    extends _$CreateTaskDTOCopyWithImpl<$Res>
    implements _$$_CreateTaskDTOCopyWith<$Res> {
  __$$_CreateTaskDTOCopyWithImpl(
      _$_CreateTaskDTO _value, $Res Function(_$_CreateTaskDTO) _then)
      : super(_value, (v) => _then(v as _$_CreateTaskDTO));

  @override
  _$_CreateTaskDTO get _value => super._value as _$_CreateTaskDTO;

  @override
  $Res call({
    Object? text = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
  }) {
    return _then(_$_CreateTaskDTO(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as TaskImportance,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateTaskDTO implements _CreateTaskDTO {
  const _$_CreateTaskDTO(
      {required this.text,
      this.importance = TaskImportance.basic,
      this.deadline,
      this.done = false});

  factory _$_CreateTaskDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTaskDTOFromJson(json);

  @override
  final String text;
  @override
  @JsonKey()
  final TaskImportance importance;
  @override
  final DateTime? deadline;
  @override
  @JsonKey()
  final bool done;

  @override
  String toString() {
    return 'CreateTaskDTO(text: $text, importance: $importance, deadline: $deadline, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTaskDTO &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  _$$_CreateTaskDTOCopyWith<_$_CreateTaskDTO> get copyWith =>
      __$$_CreateTaskDTOCopyWithImpl<_$_CreateTaskDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTaskDTOToJson(
      this,
    );
  }
}

abstract class _CreateTaskDTO implements CreateTaskDTO {
  const factory _CreateTaskDTO(
      {required final String text,
      final TaskImportance importance,
      final DateTime? deadline,
      final bool done}) = _$_CreateTaskDTO;

  factory _CreateTaskDTO.fromJson(Map<String, dynamic> json) =
      _$_CreateTaskDTO.fromJson;

  @override
  String get text;
  @override
  TaskImportance get importance;
  @override
  DateTime? get deadline;
  @override
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTaskDTOCopyWith<_$_CreateTaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
