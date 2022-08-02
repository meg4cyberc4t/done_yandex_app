// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      id: json['id'] as String,
      text: json['text'] as String,
      importance: $enumDecode(_$TaskImportanceEnumMap, json['importance']),
      deadline: json['deadline'] as int?,
      done: json['done'] as bool,
      createdAt: const TimestampConverter().fromJson(json['created_at'] as int),
      updatedAt:
          const TimestampOrNullConverter().fromJson(json['updated_at'] as int?),
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'importance': _$TaskImportanceEnumMap[instance.importance]!,
      'deadline': instance.deadline,
      'done': instance.done,
      'created_at': const TimestampConverter().toJson(instance.createdAt),
      'updated_at': const TimestampOrNullConverter().toJson(instance.updatedAt),
    };

const _$TaskImportanceEnumMap = {
  TaskImportance.low: 'low',
  TaskImportance.basic: 'basic',
  TaskImportance.important: 'important',
};
