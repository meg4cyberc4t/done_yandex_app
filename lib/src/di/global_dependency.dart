import 'package:dio/dio.dart';
import 'package:done_yandex_app/firebase_options.dart';
import 'package:done_yandex_app/src/data/sources/tasks_local_ds.dart';
import 'package:done_yandex_app/src/data/sources/tasks_remote_ds.dart';
import 'package:done_yandex_app/src/data/sources/visibility_local_ds.dart';
import 'package:done_yandex_app/src/di/abstract_global_dependency.dart';
import 'package:done_yandex_app/src/di/app_async_dependency.dart';
import 'package:done_yandex_app/src/enviroment/enviroment.dart';
import 'package:done_yandex_app/src/navigation/controller.dart';
import 'package:done_yandex_app/src/presentation/pages/home/bloc/tasks_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class GlobalDependency extends AppAsyncDependency implements IGlobalDependency {
  @override
  Future<void> initAsync(BuildContext context) async {
    env = AppEnviroment();
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://beta.mrdekk.ru/todobackend/',
        headers: {
          'Accept': "application/json",
          'Content-type': "application/json",
          'Authorization': "Bearer ${env.token}",
        },
      ),
    );
    final serverDs = TasksRemoteDataSource(dio);
    final localDs = await TasksLocalDataSource.initAsync();
    final visibilityDs = await VisibilityLocalDataSource.initAsync();
    tasksBloc = TasksBloc(
      serverDs,
      localDs,
      visibilityDs,
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {
          if (error.response?.statusCode == 400) {
            tasksBloc.add(const LoadingEvent());
          }
        },
      ),
    );
    navigation = NavigationController.init();
  }

  @override
  late final Dio dio;

  @override
  late final AppEnviroment env;

  @override
  late final TasksBloc tasksBloc;

  @override
  late final NavigationController navigation;
}

extension DepContextExtension on BuildContext {
  IGlobalDependency get global =>
      Provider.of<IGlobalDependency>(this, listen: false);
}
