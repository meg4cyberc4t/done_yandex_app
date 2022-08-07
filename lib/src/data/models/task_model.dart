// ignore_for_file: invalid_annotation_target

import 'package:done_yandex_app/src/data/enums/task_impotance_enum.dart';
import 'package:done_yandex_app/src/utils/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@Freezed(addImplicitFinal: true)
class TaskModel with _$TaskModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TaskModel({
    required String id,
    required String text,
    required TaskImportance importance,
    @TimestampOrNullConverter() required DateTime? deadline,
    required bool done,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime changedAt,
    required String lastUpdatedBy,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
