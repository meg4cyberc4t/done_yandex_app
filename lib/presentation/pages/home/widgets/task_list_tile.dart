import 'package:done_yandex_app/data/models/task_model.dart';
import 'package:done_yandex_app/presentation/pages/home/widgets/task_check_box.dart';
import 'package:done_yandex_app/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    required this.task,
    required this.visibilityDone,
    required this.onDelete,
    required this.onDone,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final TaskModel task;
  final bool visibilityDone;
  final VoidCallback onDelete;
  final VoidCallback onPressed;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    if (!visibilityDone && task.done) return const SizedBox();
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
      child: ListTile(
        onTap: onPressed,
        minLeadingWidth: 0,
        leading: TaskCheckBox(
          done: task.done,
          importance: task.importance,
          onChanged: (_) => onDone(),
        ),
        title: Text(
          task.text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        trailing: Icon(
          Icons.info_outline,
          color: context.figma.labelTertiary,
        ),
      ),
    );
  }
}
