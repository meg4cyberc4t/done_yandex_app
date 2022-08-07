// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskAppResponse _$$TaskAppResponseFromJson(Map<String, dynamic> json) =>
    _$TaskAppResponse(
      status: json['status'] as String,
      revision: json['revision'] as int,
      element: TaskModel.fromJson(json['element'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TaskAppResponseToJson(_$TaskAppResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'revision': instance.revision,
      'element': instance.element,
      'runtimeType': instance.$type,
    };

_$ListTaskAppResponse _$$ListTaskAppResponseFromJson(
        Map<String, dynamic> json) =>
    _$ListTaskAppResponse(
      status: json['status'] as String,
      revision: json['revision'] as int,
      list: (json['list'] as List<dynamic>)
          .map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ListTaskAppResponseToJson(
        _$ListTaskAppResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'revision': instance.revision,
      'list': instance.list,
      'runtimeType': instance.$type,
    };
