import 'package:dio/dio.dart';
import 'package:done_yandex_app/src/data/models/app_requests.dart';
import 'package:done_yandex_app/src/data/models/app_responses.dart';
import 'package:done_yandex_app/src/data/sources/tasks_remote_ds_interface.dart';
import 'package:done_yandex_app/src/enviroment/enviroment.dart';
import 'package:injectable/injectable.dart';

@injectable
class TasksRemoteDataSource extends ITasksRemoteDataSource {
  TasksRemoteDataSource._(this.dio);
  @factoryMethod
  factory TasksRemoteDataSource.fromEnv(AppEnviroment env) =>
      TasksRemoteDataSource._(
        Dio(
          BaseOptions(
            baseUrl: env.url,
            headers: {
              'Accept': "application/json",
              'Content-type': "application/json",
              'Authorization': "Bearer ${env.token}",
            },
          ),
        )..interceptors.add(
            InterceptorsWrapper(
              onError: (error, handler) async {
                // if (error.response?.statusCode == 400) {
                //   getIt.tasksBloc.add(const LoadingEvent());
                // }
              },
            ),
          ),
      );
  final Dio dio;

  @override
  Future<TaskAppResponse> createTask({
    required int lastRevision,
    required TaskAppRequest element,
  }) async {
    final res = await dio.post(
      '/list/',
      data: element.toJson()..remove('runtimeType'),
      options: Options(
        headers: {"X-Last-Known-Revision": lastRevision.toString()},
      ),
    );
    return TaskAppResponse.fromJson(res.data);
  }

  @override
  Future<TaskAppResponse> deleteTask({
    required final String id,
    required int lastRevision,
  }) async {
    final res = await dio.delete(
      '/list/$id',
      options: Options(
        headers: {"X-Last-Known-Revision": lastRevision.toString()},
      ),
    );
    return TaskAppResponse.fromJson(res.data);
  }

  @override
  Future<TaskAppResponse> editTask({
    required String id,
    required int lastRevision,
    required TaskAppRequest task,
  }) async {
    final res = await dio.put(
      '/list/$id',
      data: task.toJson()..remove('runtimeType'),
      options: Options(
        headers: {"X-Last-Known-Revision": lastRevision.toString()},
      ),
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
    return TaskAppResponse.fromJson(res.data);
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
      data: request.toJson()..remove('runtimeType'),
    );
    return ListTaskAppResponse.fromJson(res.data);
  }
}
