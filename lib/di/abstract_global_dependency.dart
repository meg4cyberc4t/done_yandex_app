import 'package:dio/dio.dart';
import 'package:done_yandex_app/di/app_async_dependency.dart';
import 'package:done_yandex_app/enviroment/enviroment.dart';
import 'package:done_yandex_app/presentation/pages/home/bloc/tasks_bloc.dart';

abstract class IGlobalDependency extends AppAsyncDependency {
  Dio get dio;
  AppEnviroment get env;
  TasksBloc get tasksBloc;
}
