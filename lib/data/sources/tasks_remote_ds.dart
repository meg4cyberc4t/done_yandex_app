import 'package:dio/dio.dart';
import 'package:done_yandex_app/data/models/app_responses.dart';
import 'package:done_yandex_app/data/models/app_requests.dart';
import 'package:done_yandex_app/data/sources/tasks_remote_ds_interface.dart';

class TasksRemoteDataSource extends ITasksRemoteDataSource {
  TasksRemoteDataSource(this.dio);
  final Dio dio;

  @override
  Future<TaskAppResponse> createTask({
    required int lastRevision,
    required TaskAppRequest element,
  }) async {
    final res = await dio.post(
      '/list/',
      data: element,
      options: Options(
        headers: {"X-Last-Known-Revision": lastRevision.toString()},
      ),
    );
    return TaskAppResponse.fromJson(res.data);
  }

  @override
  Future<TaskAppResponse> deleteTask(String id) async {
    final res = await dio.delete('/list/$id');
    return TaskAppResponse.fromJson(res.data);
  }

  @override
  Future<TaskAppResponse> editTask({
    required String id,
    required TaskAppRequest task,
  }) async {
    final res = await dio.put(
      '/list/$id',
      data: task,
    );
    return TaskAppResponse.fromJson(res.data);
  }

  @override
  Future<ListTaskAppResponse> getList() async {
    final res = await dio.get('/list');
    return ListTaskAppResponse.fromJson(res.data);
  }

  @override
  Future<TaskAppResponse> getTask(String id) async {
    final res = await dio.get('/list/$id');
    throw TaskAppResponse.fromJson(res.data);
  }

  @override
  Future<ListTaskAppResponse> patchList({
    required int lastRevision,
    required ListTaskAppRequest request,
  }) async {
    final res = await dio.patch(
      '/list',
      options: Options(
        headers: {"X-Last-Known-Revision": lastRevision.toString()},
      ),
      data: request,
    );
    throw ListTaskAppResponse.fromJson(res.data);
  }
}
