import 'package:done_yandex_app/src/data/enums/task_impotance_enum.dart';
import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:done_yandex_app/src/generated/assets.gen.dart';
import 'package:done_yandex_app/src/l10n/localization_extension.dart';
import 'package:done_yandex_app/src/presentation/pages/home/widgets/task_list_tile/task_check_box.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      child: ListTile(
        onTap: onPressed,
        minLeadingWidth: 0,
        contentPadding: const EdgeInsets.only(right: 16),
        horizontalTitleGap: 0,
        leading: TaskCheckBox(
          done: task.done,
          importance: task.importance,
          onChanged: (_) => onDone(),
        ),
        title: RichText(
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            children: [
              if (task.importance == TaskImportance.low)
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: Assets.icons.lowImportance.svg(),
                  ),
                ),
              if (task.importance == TaskImportance.important)
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: Assets.icons.importantImportance
                        .svg(color: context.figma.redImportance),
                  ),
                ),
              TextSpan(
                text: task.text,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: task.done ? context.figma.labelTertiary : null,
                      decoration: task.done
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
              )
            ],
          ),
        ),
        subtitle: task.deadline != null
            ? Text(
                DateFormat(
                  "d MMMM yyyy",
                  context.l10n.localeName,
                ).format(task.deadline!),
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: context.figma.labelTertiary),
              )
            : null,
        trailing: Icon(
          Icons.info_outline,
          color: context.figma.labelTertiary,
        ),
      ),
    );
  }
}
