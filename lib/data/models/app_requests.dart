// ignore_for_file: invalid_annotation_target

import 'package:done_yandex_app/data/models/task_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_requests.freezed.dart';
part 'app_requests.g.dart';

@Freezed(addImplicitFinal: true)
class AppRequests with _$AppRequests {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AppRequests.task({
    required String status,
    required TaskModel element,
  }) = TaskAppRequest;

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AppRequests.listTask({
    required String status,
    required List<TaskModel> list,
  }) = ListTaskAppRequest;

  factory AppRequests.fromJson(Map<String, dynamic> json) =>
      _$AppRequestsFromJson(json);
}
