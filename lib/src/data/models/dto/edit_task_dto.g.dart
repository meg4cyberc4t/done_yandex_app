// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditTaskDTO _$$_EditTaskDTOFromJson(Map<String, dynamic> json) =>
    _$_EditTaskDTO(
      id: json['id'] as String,
      text: json['text'] as String?,
      importance:
          $enumDecodeNullable(_$TaskImportanceEnumMap, json['importance']),
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      done: json['done'] as bool?,
    );

Map<String, dynamic> _$$_EditTaskDTOToJson(_$_EditTaskDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'importance': _$TaskImportanceEnumMap[instance.importance],
      'deadline': instance.deadline?.toIso8601String(),
      'done': instance.done,
    };

const _$TaskImportanceEnumMap = {
  TaskImportance.basic: 'basic',
  TaskImportance.low: 'low',
  TaskImportance.important: 'important',
};
