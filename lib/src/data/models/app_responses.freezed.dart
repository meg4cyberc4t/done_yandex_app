// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppResponses _$AppResponsesFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'task':
      return TaskAppResponse.fromJson(json);
    case 'listTask':
      return ListTaskAppResponse.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppResponses',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppResponses {
  String get status => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, int revision, TaskModel element)
        task,
    required TResult Function(String status, int revision, List<TaskModel> list)
        listTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, int revision, TaskModel element)? task,
    TResult Function(String status, int revision, List<TaskModel> list)?
        listTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, int revision, TaskModel element)? task,
    TResult Function(String status, int revision, List<TaskModel> list)?
        listTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskAppResponse value) task,
    required TResult Function(ListTaskAppResponse value) listTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskAppResponse value)? task,
    TResult Function(ListTaskAppResponse value)? listTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskAppResponse value)? task,
    TResult Function(ListTaskAppResponse value)? listTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppResponsesCopyWith<AppResponses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppResponsesCopyWith<$Res> {
  factory $AppResponsesCopyWith(
          AppResponses value, $Res Function(AppResponses) then) =
      _$AppResponsesCopyWithImpl<$Res>;
  $Res call({String status, int revision});
}

/// @nodoc
class _$AppResponsesCopyWithImpl<$Res> implements $AppResponsesCopyWith<$Res> {
  _$AppResponsesCopyWithImpl(this._value, this._then);

  final AppResponses _value;
  // ignore: unused_field
  final $Res Function(AppResponses) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? revision = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$TaskAppResponseCopyWith<$Res>
    implements $AppResponsesCopyWith<$Res> {
  factory _$$TaskAppResponseCopyWith(
          _$TaskAppResponse value, $Res Function(_$TaskAppResponse) then) =
      __$$TaskAppResponseCopyWithImpl<$Res>;
  @override
  $Res call({String status, int revision, TaskModel element});

  $TaskModelCopyWith<$Res> get element;
}

/// @nodoc
class __$$TaskAppResponseCopyWithImpl<$Res>
    extends _$AppResponsesCopyWithImpl<$Res>
    implements _$$TaskAppResponseCopyWith<$Res> {
  __$$TaskAppResponseCopyWithImpl(
      _$TaskAppResponse _value, $Res Function(_$TaskAppResponse) _then)
      : super(_value, (v) => _then(v as _$TaskAppResponse));

  @override
  _$TaskAppResponse get _value => super._value as _$TaskAppResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? revision = freezed,
    Object? element = freezed,
  }) {
    return _then(_$TaskAppResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }

  @override
  $TaskModelCopyWith<$Res> get element {
    return $TaskModelCopyWith<$Res>(_value.element, (value) {
      return _then(_value.copyWith(element: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TaskAppResponse implements TaskAppResponse {
  const _$TaskAppResponse(
      {required this.status,
      required this.revision,
      required this.element,
      final String? $type})
      : $type = $type ?? 'task';

  factory _$TaskAppResponse.fromJson(Map<String, dynamic> json) =>
      _$$TaskAppResponseFromJson(json);

  @override
  final String status;
  @override
  final int revision;
  @override
  final TaskModel element;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppResponses.task(status: $status, revision: $revision, element: $element)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskAppResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.revision, revision) &&
            const DeepCollectionEquality().equals(other.element, element));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(revision),
      const DeepCollectionEquality().hash(element));

  @JsonKey(ignore: true)
  @override
  _$$TaskAppResponseCopyWith<_$TaskAppResponse> get copyWith =>
      __$$TaskAppResponseCopyWithImpl<_$TaskAppResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, int revision, TaskModel element)
        task,
    required TResult Function(String status, int revision, List<TaskModel> list)
        listTask,
  }) {
    return task(status, revision, element);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, int revision, TaskModel element)? task,
    TResult Function(String status, int revision, List<TaskModel> list)?
        listTask,
  }) {
    return task?.call(status, revision, element);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, int revision, TaskModel element)? task,
    TResult Function(String status, int revision, List<TaskModel> list)?
        listTask,
    required TResult orElse(),
  }) {
    if (task != null) {
      return task(status, revision, element);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskAppResponse value) task,
    required TResult Function(ListTaskAppResponse value) listTask,
  }) {
    return task(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskAppResponse value)? task,
    TResult Function(ListTaskAppResponse value)? listTask,
  }) {
    return task?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskAppResponse value)? task,
    TResult Function(ListTaskAppResponse value)? listTask,
    required TResult orElse(),
  }) {
    if (task != null) {
      return task(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskAppResponseToJson(
      this,
    );
  }
}

abstract class TaskAppResponse implements AppResponses {
  const factory TaskAppResponse(
      {required final String status,
      required final int revision,
      required final TaskModel element}) = _$TaskAppResponse;

  factory TaskAppResponse.fromJson(Map<String, dynamic> json) =
      _$TaskAppResponse.fromJson;

  @override
  String get status;
  @override
  int get revision;
  TaskModel get element;
  @override
  @JsonKey(ignore: true)
  _$$TaskAppResponseCopyWith<_$TaskAppResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListTaskAppResponseCopyWith<$Res>
    implements $AppResponsesCopyWith<$Res> {
  factory _$$ListTaskAppResponseCopyWith(_$ListTaskAppResponse value,
          $Res Function(_$ListTaskAppResponse) then) =
      __$$ListTaskAppResponseCopyWithImpl<$Res>;
  @override
  $Res call({String status, int revision, List<TaskModel> list});
}

/// @nodoc
class __$$ListTaskAppResponseCopyWithImpl<$Res>
    extends _$AppResponsesCopyWithImpl<$Res>
    implements _$$ListTaskAppResponseCopyWith<$Res> {
  __$$ListTaskAppResponseCopyWithImpl(
      _$ListTaskAppResponse _value, $Res Function(_$ListTaskAppResponse) _then)
      : super(_value, (v) => _then(v as _$ListTaskAppResponse));

  @override
  _$ListTaskAppResponse get _value => super._value as _$ListTaskAppResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? revision = freezed,
    Object? list = freezed,
  }) {
    return _then(_$ListTaskAppResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ListTaskAppResponse implements ListTaskAppResponse {
  const _$ListTaskAppResponse(
      {required this.status,
      required this.revision,
      required final List<TaskModel> list,
      final String? $type})
      : _list = list,
        $type = $type ?? 'listTask';

  factory _$ListTaskAppResponse.fromJson(Map<String, dynamic> json) =>
      _$$ListTaskAppResponseFromJson(json);

  @override
  final String status;
  @override
  final int revision;
  final List<TaskModel> _list;
  @override
  List<TaskModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppResponses.listTask(status: $status, revision: $revision, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTaskAppResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.revision, revision) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(revision),
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$ListTaskAppResponseCopyWith<_$ListTaskAppResponse> get copyWith =>
      __$$ListTaskAppResponseCopyWithImpl<_$ListTaskAppResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, int revision, TaskModel element)
        task,
    required TResult Function(String status, int revision, List<TaskModel> list)
        listTask,
  }) {
    return listTask(status, revision, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String status, int revision, TaskModel element)? task,
    TResult Function(String status, int revision, List<TaskModel> list)?
        listTask,
  }) {
    return listTask?.call(status, revision, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, int revision, TaskModel element)? task,
    TResult Function(String status, int revision, List<TaskModel> list)?
        listTask,
    required TResult orElse(),
  }) {
    if (listTask != null) {
      return listTask(status, revision, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskAppResponse value) task,
    required TResult Function(ListTaskAppResponse value) listTask,
  }) {
    return listTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskAppResponse value)? task,
    TResult Function(ListTaskAppResponse value)? listTask,
  }) {
    return listTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskAppResponse value)? task,
    TResult Function(ListTaskAppResponse value)? listTask,
    required TResult orElse(),
  }) {
    if (listTask != null) {
      return listTask(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ListTaskAppResponseToJson(
      this,
    );
  }
}

abstract class ListTaskAppResponse implements AppResponses {
  const factory ListTaskAppResponse(
      {required final String status,
      required final int revision,
      required final List<TaskModel> list}) = _$ListTaskAppResponse;

  factory ListTaskAppResponse.fromJson(Map<String, dynamic> json) =
      _$ListTaskAppResponse.fromJson;

  @override
  String get status;
  @override
  int get revision;
  List<TaskModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$ListTaskAppResponseCopyWith<_$ListTaskAppResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
