// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_requests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppRequests _$AppRequestsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'task':
      return TaskAppRequest.fromJson(json);
    case 'listTask':
      return ListTaskAppRequest.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppRequests',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppRequests {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel element) task,
    required TResult Function(List<TaskModel> list) listTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TaskModel element)? task,
    TResult Function(List<TaskModel> list)? listTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel element)? task,
    TResult Function(List<TaskModel> list)? listTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskAppRequest value) task,
    required TResult Function(ListTaskAppRequest value) listTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskAppRequest value)? task,
    TResult Function(ListTaskAppRequest value)? listTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskAppRequest value)? task,
    TResult Function(ListTaskAppRequest value)? listTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRequestsCopyWith<$Res> {
  factory $AppRequestsCopyWith(
          AppRequests value, $Res Function(AppRequests) then) =
      _$AppRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRequestsCopyWithImpl<$Res> implements $AppRequestsCopyWith<$Res> {
  _$AppRequestsCopyWithImpl(this._value, this._then);

  final AppRequests _value;
  // ignore: unused_field
  final $Res Function(AppRequests) _then;
}

/// @nodoc
abstract class _$$TaskAppRequestCopyWith<$Res> {
  factory _$$TaskAppRequestCopyWith(
          _$TaskAppRequest value, $Res Function(_$TaskAppRequest) then) =
      __$$TaskAppRequestCopyWithImpl<$Res>;
  $Res call({TaskModel element});

  $TaskModelCopyWith<$Res> get element;
}

/// @nodoc
class __$$TaskAppRequestCopyWithImpl<$Res>
    extends _$AppRequestsCopyWithImpl<$Res>
    implements _$$TaskAppRequestCopyWith<$Res> {
  __$$TaskAppRequestCopyWithImpl(
      _$TaskAppRequest _value, $Res Function(_$TaskAppRequest) _then)
      : super(_value, (v) => _then(v as _$TaskAppRequest));

  @override
  _$TaskAppRequest get _value => super._value as _$TaskAppRequest;

  @override
  $Res call({
    Object? element = freezed,
  }) {
    return _then(_$TaskAppRequest(
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
class _$TaskAppRequest implements TaskAppRequest {
  const _$TaskAppRequest({required this.element, final String? $type})
      : $type = $type ?? 'task';

  factory _$TaskAppRequest.fromJson(Map<String, dynamic> json) =>
      _$$TaskAppRequestFromJson(json);

  @override
  final TaskModel element;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppRequests.task(element: $element)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskAppRequest &&
            const DeepCollectionEquality().equals(other.element, element));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(element));

  @JsonKey(ignore: true)
  @override
  _$$TaskAppRequestCopyWith<_$TaskAppRequest> get copyWith =>
      __$$TaskAppRequestCopyWithImpl<_$TaskAppRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel element) task,
    required TResult Function(List<TaskModel> list) listTask,
  }) {
    return task(element);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TaskModel element)? task,
    TResult Function(List<TaskModel> list)? listTask,
  }) {
    return task?.call(element);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel element)? task,
    TResult Function(List<TaskModel> list)? listTask,
    required TResult orElse(),
  }) {
    if (task != null) {
      return task(element);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskAppRequest value) task,
    required TResult Function(ListTaskAppRequest value) listTask,
  }) {
    return task(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskAppRequest value)? task,
    TResult Function(ListTaskAppRequest value)? listTask,
  }) {
    return task?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskAppRequest value)? task,
    TResult Function(ListTaskAppRequest value)? listTask,
    required TResult orElse(),
  }) {
    if (task != null) {
      return task(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskAppRequestToJson(
      this,
    );
  }
}

abstract class TaskAppRequest implements AppRequests {
  const factory TaskAppRequest({required final TaskModel element}) =
      _$TaskAppRequest;

  factory TaskAppRequest.fromJson(Map<String, dynamic> json) =
      _$TaskAppRequest.fromJson;

  TaskModel get element;
  @JsonKey(ignore: true)
  _$$TaskAppRequestCopyWith<_$TaskAppRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListTaskAppRequestCopyWith<$Res> {
  factory _$$ListTaskAppRequestCopyWith(_$ListTaskAppRequest value,
          $Res Function(_$ListTaskAppRequest) then) =
      __$$ListTaskAppRequestCopyWithImpl<$Res>;
  $Res call({List<TaskModel> list});
}

/// @nodoc
class __$$ListTaskAppRequestCopyWithImpl<$Res>
    extends _$AppRequestsCopyWithImpl<$Res>
    implements _$$ListTaskAppRequestCopyWith<$Res> {
  __$$ListTaskAppRequestCopyWithImpl(
      _$ListTaskAppRequest _value, $Res Function(_$ListTaskAppRequest) _then)
      : super(_value, (v) => _then(v as _$ListTaskAppRequest));

  @override
  _$ListTaskAppRequest get _value => super._value as _$ListTaskAppRequest;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$ListTaskAppRequest(
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ListTaskAppRequest implements ListTaskAppRequest {
  const _$ListTaskAppRequest(
      {required final List<TaskModel> list, final String? $type})
      : _list = list,
        $type = $type ?? 'listTask';

  factory _$ListTaskAppRequest.fromJson(Map<String, dynamic> json) =>
      _$$ListTaskAppRequestFromJson(json);

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
    return 'AppRequests.listTask(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTaskAppRequest &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$ListTaskAppRequestCopyWith<_$ListTaskAppRequest> get copyWith =>
      __$$ListTaskAppRequestCopyWithImpl<_$ListTaskAppRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel element) task,
    required TResult Function(List<TaskModel> list) listTask,
  }) {
    return listTask(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TaskModel element)? task,
    TResult Function(List<TaskModel> list)? listTask,
  }) {
    return listTask?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel element)? task,
    TResult Function(List<TaskModel> list)? listTask,
    required TResult orElse(),
  }) {
    if (listTask != null) {
      return listTask(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskAppRequest value) task,
    required TResult Function(ListTaskAppRequest value) listTask,
  }) {
    return listTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskAppRequest value)? task,
    TResult Function(ListTaskAppRequest value)? listTask,
  }) {
    return listTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskAppRequest value)? task,
    TResult Function(ListTaskAppRequest value)? listTask,
    required TResult orElse(),
  }) {
    if (listTask != null) {
      return listTask(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ListTaskAppRequestToJson(
      this,
    );
  }
}

abstract class ListTaskAppRequest implements AppRequests {
  const factory ListTaskAppRequest({required final List<TaskModel> list}) =
      _$ListTaskAppRequest;

  factory ListTaskAppRequest.fromJson(Map<String, dynamic> json) =
      _$ListTaskAppRequest.fromJson;

  List<TaskModel> get list;
  @JsonKey(ignore: true)
  _$$ListTaskAppRequestCopyWith<_$ListTaskAppRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
