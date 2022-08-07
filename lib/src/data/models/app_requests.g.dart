// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskAppRequest _$$TaskAppRequestFromJson(Map<String, dynamic> json) =>
    _$TaskAppRequest(
      element: TaskModel.fromJson(json['element'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TaskAppRequestToJson(_$TaskAppRequest instance) =>
    <String, dynamic>{
      'element': instance.element,
      'runtimeType': instance.$type,
    };

_$ListTaskAppRequest _$$ListTaskAppRequestFromJson(Map<String, dynamic> json) =>
    _$ListTaskAppRequest(
      list: (json['list'] as List<dynamic>)
          .map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ListTaskAppRequestToJson(
        _$ListTaskAppRequest instance) =>
    <String, dynamic>{
      'list': instance.list,
      'runtimeType': instance.$type,
    };
