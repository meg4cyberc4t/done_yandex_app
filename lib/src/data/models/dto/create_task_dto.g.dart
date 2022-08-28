// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateTaskDTO _$$_CreateTaskDTOFromJson(Map<String, dynamic> json) =>
    _$_CreateTaskDTO(
      text: json['text'] as String,
      importance:
          $enumDecodeNullable(_$TaskImportanceEnumMap, json['importance']) ??
              TaskImportance.basic,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      done: json['done'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CreateTaskDTOToJson(_$_CreateTaskDTO instance) =>
    <String, dynamic>{
      'text': instance.text,
      'importance': _$TaskImportanceEnumMap[instance.importance]!,
      'deadline': instance.deadline?.toIso8601String(),
      'done': instance.done,
    };

const _$TaskImportanceEnumMap = {
  TaskImportance.basic: 'basic',
  TaskImportance.low: 'low',
  TaskImportance.important: 'important',
};
