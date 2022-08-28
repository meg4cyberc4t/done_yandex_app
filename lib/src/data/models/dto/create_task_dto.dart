import 'package:done_yandex_app/src/data/enums/task_impotance_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_task_dto.freezed.dart';
part 'create_task_dto.g.dart';

@Freezed(addImplicitFinal: true)
class CreateTaskDTO with _$CreateTaskDTO {
  const factory CreateTaskDTO({
    required String text,
    @Default(TaskImportance.basic) TaskImportance importance,
    DateTime? deadline,
    @Default(false) bool done,
  }) = _CreateTaskDTO;

  factory CreateTaskDTO.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskDTOFromJson(json);
}
