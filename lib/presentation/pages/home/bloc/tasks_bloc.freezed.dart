// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() add,
    required TResult Function() edit,
    required TResult Function() delete,
    required TResult Function() changeVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(AddTaskEvent value) add,
    required TResult Function(EditTaskEvent value) edit,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(ChangeVisibilityEvent value) changeVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res> implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  final TasksEvent _value;
  // ignore: unused_field
  final $Res Function(TasksEvent) _then;
}

/// @nodoc
abstract class _$$StartedEventCopyWith<$Res> {
  factory _$$StartedEventCopyWith(
          _$StartedEvent value, $Res Function(_$StartedEvent) then) =
      __$$StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedEventCopyWithImpl<$Res> extends _$TasksEventCopyWithImpl<$Res>
    implements _$$StartedEventCopyWith<$Res> {
  __$$StartedEventCopyWithImpl(
      _$StartedEvent _value, $Res Function(_$StartedEvent) _then)
      : super(_value, (v) => _then(v as _$StartedEvent));

  @override
  _$StartedEvent get _value => super._value as _$StartedEvent;
}

/// @nodoc

class _$StartedEvent implements StartedEvent {
  const _$StartedEvent();

  @override
  String toString() {
    return 'TasksEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() add,
    required TResult Function() edit,
    required TResult Function() delete,
    required TResult Function() changeVisibility,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(AddTaskEvent value) add,
    required TResult Function(EditTaskEvent value) edit,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(ChangeVisibilityEvent value) changeVisibility,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class StartedEvent implements TasksEvent {
  const factory StartedEvent() = _$StartedEvent;
}

/// @nodoc
abstract class _$$LoadingEventCopyWith<$Res> {
  factory _$$LoadingEventCopyWith(
          _$LoadingEvent value, $Res Function(_$LoadingEvent) then) =
      __$$LoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingEventCopyWithImpl<$Res> extends _$TasksEventCopyWithImpl<$Res>
    implements _$$LoadingEventCopyWith<$Res> {
  __$$LoadingEventCopyWithImpl(
      _$LoadingEvent _value, $Res Function(_$LoadingEvent) _then)
      : super(_value, (v) => _then(v as _$LoadingEvent));

  @override
  _$LoadingEvent get _value => super._value as _$LoadingEvent;
}

/// @nodoc

class _$LoadingEvent implements LoadingEvent {
  const _$LoadingEvent();

  @override
  String toString() {
    return 'TasksEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() add,
    required TResult Function() edit,
    required TResult Function() delete,
    required TResult Function() changeVisibility,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(AddTaskEvent value) add,
    required TResult Function(EditTaskEvent value) edit,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(ChangeVisibilityEvent value) changeVisibility,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingEvent implements TasksEvent {
  const factory LoadingEvent() = _$LoadingEvent;
}

/// @nodoc
abstract class _$$AddTaskEventCopyWith<$Res> {
  factory _$$AddTaskEventCopyWith(
          _$AddTaskEvent value, $Res Function(_$AddTaskEvent) then) =
      __$$AddTaskEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddTaskEventCopyWithImpl<$Res> extends _$TasksEventCopyWithImpl<$Res>
    implements _$$AddTaskEventCopyWith<$Res> {
  __$$AddTaskEventCopyWithImpl(
      _$AddTaskEvent _value, $Res Function(_$AddTaskEvent) _then)
      : super(_value, (v) => _then(v as _$AddTaskEvent));

  @override
  _$AddTaskEvent get _value => super._value as _$AddTaskEvent;
}

/// @nodoc

class _$AddTaskEvent implements AddTaskEvent {
  const _$AddTaskEvent();

  @override
  String toString() {
    return 'TasksEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddTaskEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() add,
    required TResult Function() edit,
    required TResult Function() delete,
    required TResult Function() changeVisibility,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(AddTaskEvent value) add,
    required TResult Function(EditTaskEvent value) edit,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(ChangeVisibilityEvent value) changeVisibility,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class AddTaskEvent implements TasksEvent {
  const factory AddTaskEvent() = _$AddTaskEvent;
}

/// @nodoc
abstract class _$$EditTaskEventCopyWith<$Res> {
  factory _$$EditTaskEventCopyWith(
          _$EditTaskEvent value, $Res Function(_$EditTaskEvent) then) =
      __$$EditTaskEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTaskEventCopyWithImpl<$Res> extends _$TasksEventCopyWithImpl<$Res>
    implements _$$EditTaskEventCopyWith<$Res> {
  __$$EditTaskEventCopyWithImpl(
      _$EditTaskEvent _value, $Res Function(_$EditTaskEvent) _then)
      : super(_value, (v) => _then(v as _$EditTaskEvent));

  @override
  _$EditTaskEvent get _value => super._value as _$EditTaskEvent;
}

/// @nodoc

class _$EditTaskEvent implements EditTaskEvent {
  const _$EditTaskEvent();

  @override
  String toString() {
    return 'TasksEvent.edit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditTaskEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() add,
    required TResult Function() edit,
    required TResult Function() delete,
    required TResult Function() changeVisibility,
  }) {
    return edit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
  }) {
    return edit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(AddTaskEvent value) add,
    required TResult Function(EditTaskEvent value) edit,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(ChangeVisibilityEvent value) changeVisibility,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditTaskEvent implements TasksEvent {
  const factory EditTaskEvent() = _$EditTaskEvent;
}

/// @nodoc
abstract class _$$DeleteTaskEventCopyWith<$Res> {
  factory _$$DeleteTaskEventCopyWith(
          _$DeleteTaskEvent value, $Res Function(_$DeleteTaskEvent) then) =
      __$$DeleteTaskEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteTaskEventCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res>
    implements _$$DeleteTaskEventCopyWith<$Res> {
  __$$DeleteTaskEventCopyWithImpl(
      _$DeleteTaskEvent _value, $Res Function(_$DeleteTaskEvent) _then)
      : super(_value, (v) => _then(v as _$DeleteTaskEvent));

  @override
  _$DeleteTaskEvent get _value => super._value as _$DeleteTaskEvent;
}

/// @nodoc

class _$DeleteTaskEvent implements DeleteTaskEvent {
  const _$DeleteTaskEvent();

  @override
  String toString() {
    return 'TasksEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteTaskEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() add,
    required TResult Function() edit,
    required TResult Function() delete,
    required TResult Function() changeVisibility,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(AddTaskEvent value) add,
    required TResult Function(EditTaskEvent value) edit,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(ChangeVisibilityEvent value) changeVisibility,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskEvent implements TasksEvent {
  const factory DeleteTaskEvent() = _$DeleteTaskEvent;
}

/// @nodoc
abstract class _$$ChangeVisibilityEventCopyWith<$Res> {
  factory _$$ChangeVisibilityEventCopyWith(_$ChangeVisibilityEvent value,
          $Res Function(_$ChangeVisibilityEvent) then) =
      __$$ChangeVisibilityEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeVisibilityEventCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res>
    implements _$$ChangeVisibilityEventCopyWith<$Res> {
  __$$ChangeVisibilityEventCopyWithImpl(_$ChangeVisibilityEvent _value,
      $Res Function(_$ChangeVisibilityEvent) _then)
      : super(_value, (v) => _then(v as _$ChangeVisibilityEvent));

  @override
  _$ChangeVisibilityEvent get _value => super._value as _$ChangeVisibilityEvent;
}

/// @nodoc

class _$ChangeVisibilityEvent implements ChangeVisibilityEvent {
  const _$ChangeVisibilityEvent();

  @override
  String toString() {
    return 'TasksEvent.changeVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeVisibilityEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() add,
    required TResult Function() edit,
    required TResult Function() delete,
    required TResult Function() changeVisibility,
  }) {
    return changeVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
  }) {
    return changeVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? add,
    TResult Function()? edit,
    TResult Function()? delete,
    TResult Function()? changeVisibility,
    required TResult orElse(),
  }) {
    if (changeVisibility != null) {
      return changeVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(LoadingEvent value) loading,
    required TResult Function(AddTaskEvent value) add,
    required TResult Function(EditTaskEvent value) edit,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(ChangeVisibilityEvent value) changeVisibility,
  }) {
    return changeVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
  }) {
    return changeVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(LoadingEvent value)? loading,
    TResult Function(AddTaskEvent value)? add,
    TResult Function(EditTaskEvent value)? edit,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(ChangeVisibilityEvent value)? changeVisibility,
    required TResult orElse(),
  }) {
    if (changeVisibility != null) {
      return changeVisibility(this);
    }
    return orElse();
  }
}

abstract class ChangeVisibilityEvent implements TasksEvent {
  const factory ChangeVisibilityEvent() = _$ChangeVisibilityEvent;
}

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool visibility, List<TaskModel> tasks, int revision)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool visibility, List<TaskModel> tasks, int revision)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool visibility, List<TaskModel> tasks, int revision)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTasksState value) initial,
    required TResult Function(LoadedTasksState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialTasksState value)? initial,
    TResult Function(LoadedTasksState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTasksState value)? initial,
    TResult Function(LoadedTasksState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res> implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  final TasksState _value;
  // ignore: unused_field
  final $Res Function(TasksState) _then;
}

/// @nodoc
abstract class _$$InitialTasksStateCopyWith<$Res> {
  factory _$$InitialTasksStateCopyWith(
          _$InitialTasksState value, $Res Function(_$InitialTasksState) then) =
      __$$InitialTasksStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialTasksStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res>
    implements _$$InitialTasksStateCopyWith<$Res> {
  __$$InitialTasksStateCopyWithImpl(
      _$InitialTasksState _value, $Res Function(_$InitialTasksState) _then)
      : super(_value, (v) => _then(v as _$InitialTasksState));

  @override
  _$InitialTasksState get _value => super._value as _$InitialTasksState;
}

/// @nodoc

class _$InitialTasksState implements InitialTasksState {
  const _$InitialTasksState();

  @override
  String toString() {
    return 'TasksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialTasksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool visibility, List<TaskModel> tasks, int revision)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool visibility, List<TaskModel> tasks, int revision)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool visibility, List<TaskModel> tasks, int revision)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTasksState value) initial,
    required TResult Function(LoadedTasksState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialTasksState value)? initial,
    TResult Function(LoadedTasksState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTasksState value)? initial,
    TResult Function(LoadedTasksState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialTasksState implements TasksState {
  const factory InitialTasksState() = _$InitialTasksState;
}

/// @nodoc
abstract class _$$LoadedTasksStateCopyWith<$Res> {
  factory _$$LoadedTasksStateCopyWith(
          _$LoadedTasksState value, $Res Function(_$LoadedTasksState) then) =
      __$$LoadedTasksStateCopyWithImpl<$Res>;
  $Res call({bool visibility, List<TaskModel> tasks, int revision});
}

/// @nodoc
class __$$LoadedTasksStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res>
    implements _$$LoadedTasksStateCopyWith<$Res> {
  __$$LoadedTasksStateCopyWithImpl(
      _$LoadedTasksState _value, $Res Function(_$LoadedTasksState) _then)
      : super(_value, (v) => _then(v as _$LoadedTasksState));

  @override
  _$LoadedTasksState get _value => super._value as _$LoadedTasksState;

  @override
  $Res call({
    Object? visibility = freezed,
    Object? tasks = freezed,
    Object? revision = freezed,
  }) {
    return _then(_$LoadedTasksState(
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadedTasksState implements LoadedTasksState {
  const _$LoadedTasksState(
      {required this.visibility,
      required final List<TaskModel> tasks,
      required this.revision})
      : _tasks = tasks;

  @override
  final bool visibility;
  final List<TaskModel> _tasks;
  @override
  List<TaskModel> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final int revision;

  @override
  String toString() {
    return 'TasksState.loaded(visibility: $visibility, tasks: $tasks, revision: $revision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedTasksState &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.revision, revision));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(visibility),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(revision));

  @JsonKey(ignore: true)
  @override
  _$$LoadedTasksStateCopyWith<_$LoadedTasksState> get copyWith =>
      __$$LoadedTasksStateCopyWithImpl<_$LoadedTasksState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool visibility, List<TaskModel> tasks, int revision)
        loaded,
  }) {
    return loaded(visibility, tasks, revision);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool visibility, List<TaskModel> tasks, int revision)?
        loaded,
  }) {
    return loaded?.call(visibility, tasks, revision);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool visibility, List<TaskModel> tasks, int revision)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(visibility, tasks, revision);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTasksState value) initial,
    required TResult Function(LoadedTasksState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialTasksState value)? initial,
    TResult Function(LoadedTasksState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTasksState value)? initial,
    TResult Function(LoadedTasksState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedTasksState implements TasksState {
  const factory LoadedTasksState(
      {required final bool visibility,
      required final List<TaskModel> tasks,
      required final int revision}) = _$LoadedTasksState;

  bool get visibility;
  List<TaskModel> get tasks;
  int get revision;
  @JsonKey(ignore: true)
  _$$LoadedTasksStateCopyWith<_$LoadedTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}
