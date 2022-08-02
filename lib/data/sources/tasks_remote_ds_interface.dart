import 'package:dio/dio.dart';
import 'package:done_yandex_app/data/models/app_requests.dart';
import 'package:done_yandex_app/data/models/app_responses.dart';

abstract class ITasksRemoteDataSource {
  Future<ListTaskAppResponse> getList();

  Future<ListTaskAppResponse> patchList({
    required int lastRevision,
    required ListTaskAppRequest request,
  });

  Future<TaskAppResponse> getTask(String id);

  Future<TaskAppResponse> createTask({
    required int lastRevision,
    required TaskAppRequest element,
  });

  Future<TaskAppResponse> editTask({
    required String id,
    required TaskAppRequest task,
  });

  Future<TaskAppResponse> deleteTask(String id);
}
