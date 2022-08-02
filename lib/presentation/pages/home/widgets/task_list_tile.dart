import 'package:done_yandex_app/data/models/task_model.dart';
import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    required this.task,
    Key? key,
  }) : super(key: key);
  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.text),
    );
  }
}
