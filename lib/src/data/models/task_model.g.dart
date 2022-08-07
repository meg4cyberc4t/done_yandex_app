// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      id: json['id'] as String,
      text: json['text'] as String,
      importance: $enumDecode(_$TaskImportanceEnumMap, json['importance']),
      deadline:
          const TimestampOrNullConverter().fromJson(json['deadline'] as int?),
      done: json['done'] as bool,
      createdAt: const TimestampConverter().fromJson(json['created_at'] as int),
      changedAt: const TimestampConverter().fromJson(json['changed_at'] as int),
      lastUpdatedBy: json['last_updated_by'] as String,
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'importance': _$TaskImportanceEnumMap[instance.importance]!,
      'deadline': const TimestampOrNullConverter().toJson(instance.deadline),
      'done': instance.done,
      'created_at': const TimestampConverter().toJson(instance.createdAt),
      'changed_at': const TimestampConverter().toJson(instance.changedAt),
      'last_updated_by': instance.lastUpdatedBy,
    };

const _$TaskImportanceEnumMap = {
  TaskImportance.basic: 'basic',
  TaskImportance.low: 'low',
  TaskImportance.important: 'important',
};
