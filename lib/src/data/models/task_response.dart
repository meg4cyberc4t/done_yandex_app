// ignore_for_file: invalid_annotation_target

import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_response.freezed.dart';
part 'task_response.g.dart';

@Freezed(addImplicitFinal: true)
class TaskResponse with _$TaskResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TaskResponse({
    required String status,
    required int revision,
    required TaskModel element,
  }) = _TaskResponse;

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);
}
