import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:flutter/material.dart';

import 'task_list_tile_inner.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    required this.onDelete,
    required this.onDone,
    required this.onPressed,
    required this.task,
    required this.visibilityDone,
    Key? key,
  }) : super(key: key);
  final TaskModel task;
  final VoidCallback onDelete;
  final VoidCallback onPressed;
  final VoidCallback onDone;
  final bool visibilityDone;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      key: ValueKey<String>(task.id),
      firstChild: TaskListTileInner(
        task: task,
        onDelete: onDelete,
        onDone: onDone,
        onPressed: onPressed,
      ),
      secondChild: const SizedBox(),
      crossFadeState: visibilityDone && task.done
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      sizeCurve: Curves.easeInOutQuad,
      duration: const Duration(milliseconds: 500),
    );
  }
}
