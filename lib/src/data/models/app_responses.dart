// ignore_for_file: invalid_annotation_target

import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_responses.freezed.dart';
part 'app_responses.g.dart';

@Freezed(addImplicitFinal: true)
class AppResponses with _$AppResponses {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AppResponses.task({
    required String status,
    required int revision,
    required TaskModel element,
  }) = TaskAppResponse;

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AppResponses.listTask({
    required String status,
    required int revision,
    required List<TaskModel> list,
  }) = ListTaskAppResponse;

  factory AppResponses.fromJson(Map<String, dynamic> json) =>
      _$AppResponsesFromJson(json);
}
