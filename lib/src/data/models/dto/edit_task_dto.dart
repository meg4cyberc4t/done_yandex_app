import 'package:done_yandex_app/src/data/enums/task_impotance_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_task_dto.freezed.dart';
part 'edit_task_dto.g.dart';

@Freezed(addImplicitFinal: true)
class EditTaskDTO with _$EditTaskDTO {
  const factory EditTaskDTO({
    required final String id,
    final String? text,
    final TaskImportance? importance,
    final DateTime? deadline,
    final bool? done,
  }) = _EditTaskDTO;

  factory EditTaskDTO.fromJson(Map<String, dynamic> json) =>
      _$EditTaskDTOFromJson(json);
}
