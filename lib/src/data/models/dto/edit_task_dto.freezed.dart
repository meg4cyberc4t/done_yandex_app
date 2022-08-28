// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditTaskDTO _$EditTaskDTOFromJson(Map<String, dynamic> json) {
  return _EditTaskDTO.fromJson(json);
}

/// @nodoc
mixin _$EditTaskDTO {
  String get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  TaskImportance? get importance => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditTaskDTOCopyWith<EditTaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskDTOCopyWith<$Res> {
  factory $EditTaskDTOCopyWith(
          EditTaskDTO value, $Res Function(EditTaskDTO) then) =
      _$EditTaskDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? text,
      TaskImportance? importance,
      DateTime? deadline,
      bool? done});
}

/// @nodoc
class _$EditTaskDTOCopyWithImpl<$Res> implements $EditTaskDTOCopyWith<$Res> {
  _$EditTaskDTOCopyWithImpl(this._value, this._then);

  final EditTaskDTO _value;
  // ignore: unused_field
  final $Res Function(EditTaskDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as TaskImportance?,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_EditTaskDTOCopyWith<$Res>
    implements $EditTaskDTOCopyWith<$Res> {
  factory _$$_EditTaskDTOCopyWith(
          _$_EditTaskDTO value, $Res Function(_$_EditTaskDTO) then) =
      __$$_EditTaskDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? text,
      TaskImportance? importance,
      DateTime? deadline,
      bool? done});
}

/// @nodoc
class __$$_EditTaskDTOCopyWithImpl<$Res> extends _$EditTaskDTOCopyWithImpl<$Res>
    implements _$$_EditTaskDTOCopyWith<$Res> {
  __$$_EditTaskDTOCopyWithImpl(
      _$_EditTaskDTO _value, $Res Function(_$_EditTaskDTO) _then)
      : super(_value, (v) => _then(v as _$_EditTaskDTO));

  @override
  _$_EditTaskDTO get _value => super._value as _$_EditTaskDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
  }) {
    return _then(_$_EditTaskDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as TaskImportance?,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditTaskDTO implements _EditTaskDTO {
  const _$_EditTaskDTO(
      {required this.id, this.text, this.importance, this.deadline, this.done});

  factory _$_EditTaskDTO.fromJson(Map<String, dynamic> json) =>
      _$$_EditTaskDTOFromJson(json);

  @override
  final String id;
  @override
  final String? text;
  @override
  final TaskImportance? importance;
  @override
  final DateTime? deadline;
  @override
  final bool? done;

  @override
  String toString() {
    return 'EditTaskDTO(id: $id, text: $text, importance: $importance, deadline: $deadline, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTaskDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
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
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  _$$_EditTaskDTOCopyWith<_$_EditTaskDTO> get copyWith =>
      __$$_EditTaskDTOCopyWithImpl<_$_EditTaskDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditTaskDTOToJson(
      this,
    );
  }
}

abstract class _EditTaskDTO implements EditTaskDTO {
  const factory _EditTaskDTO(
      {required final String id,
      final String? text,
      final TaskImportance? importance,
      final DateTime? deadline,
      final bool? done}) = _$_EditTaskDTO;

  factory _EditTaskDTO.fromJson(Map<String, dynamic> json) =
      _$_EditTaskDTO.fromJson;

  @override
  String get id;
  @override
  String? get text;
  @override
  TaskImportance? get importance;
  @override
  DateTime? get deadline;
  @override
  bool? get done;
  @override
  @JsonKey(ignore: true)
  _$$_EditTaskDTOCopyWith<_$_EditTaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
