import 'package:done_yandex_app/data/models/task_model.dart';
import 'package:done_yandex_app/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
    return Slidable(
      key: ValueKey(task.id),
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        dismissible: Builder(
          builder: (slidableContext) => DismissiblePane(
            onDismissed: () {},
            confirmDismiss: () async {
              onDone();
              Slidable.of(slidableContext)?.close();
              return false;
            },
          ),
        ),
        extentRatio: 0.3,
        children: [
          SlidableAction(
            onPressed: (context) => onDone(),
            backgroundColor: context.figma.green,
            foregroundColor: context.figma.white,
            icon: Icons.done,
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        dismissible: DismissiblePane(onDismissed: onDelete),
        extentRatio: 0.3,
        children: [
          SlidableAction(
            onPressed: (context) => onDelete(),
            backgroundColor: context.figma.red,
            foregroundColor: context.figma.white,
            icon: Icons.delete,
          ),
        ],
      ),
      child: ListTile(
        onTap: onPressed,
        leading: Checkbox(
          onChanged: (_) => onDone,
          value: task.done,
        ),
        title: Text(
          task.text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
