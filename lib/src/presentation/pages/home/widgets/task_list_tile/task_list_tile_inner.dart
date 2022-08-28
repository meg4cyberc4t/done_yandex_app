import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:done_yandex_app/src/presentation/pages/home/widgets/task_list_tile/task_list_tile_content.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TaskListTileInner extends StatelessWidget {
  const TaskListTileInner({
    required this.task,
    required this.onDelete,
    required this.onDone,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final TaskModel task;
  final VoidCallback onDelete;
  final VoidCallback onPressed;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: ValueKey<String>(task.id),
        confirmDismiss: (direction) async {
          if (direction == DismissDirection.startToEnd) onDone();
          return direction == DismissDirection.endToStart;
        },
        onDismissed: (direction) => onDelete(),
        background: Container(
          color: context.figma.green,
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Icon(
              Icons.done,
              color: context.figma.white,
            ),
          ),
        ),
        secondaryBackground: Container(
          color: context.figma.red,
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Icon(
              Icons.delete,
              color: context.figma.white,
            ),
          ),
        ),
        child: TaskListTileContent(
          onDone: onDone,
          task: task,
          onPressed: onPressed,
        ));
  }
}
