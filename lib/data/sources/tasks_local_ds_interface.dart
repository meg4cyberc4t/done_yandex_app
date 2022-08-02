import 'package:done_yandex_app/data/models/app_requests.dart';
import 'package:done_yandex_app/data/models/app_responses.dart';

abstract class ITasksLocalDataSource {
  Future<ListTaskAppResponse?> getList();
  Future<void> saveList(ListTaskAppResponse request);

  Future<TaskAppResponse?> getTask(String id);
  Future<void> saveTask(TaskAppResponse request);
}
