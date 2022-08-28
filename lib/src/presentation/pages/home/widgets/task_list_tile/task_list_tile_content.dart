import 'package:done_yandex_app/src/data/enums/task_impotance_enum.dart';
import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:done_yandex_app/src/generated/assets.gen.dart';
import 'package:done_yandex_app/src/l10n/localization_extension.dart';
import 'package:done_yandex_app/src/presentation/pages/home/widgets/task_list_tile/task_check_box.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskListTileContent extends StatelessWidget {
  const TaskListTileContent({
    required this.onDone,
    required this.onPressed,
    required this.task,
    Key? key,
  }) : super(key: key);
  final TaskModel task;
  final VoidCallback onPressed;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TaskCheckBox(
                done: task.done,
                importance: task.importance,
                onChanged: (_) => onDone(),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                    color: task.done
                                        ? context.figma.labelTertiary
                                        : null,
                                    decoration: task.done
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                                  ),
                            )
                          ],
                        ),
                      ),
                      if (task.deadline != null)
                        Text(
                          DateFormat(
                            "d MMMM yyyy",
                            context.l10n.localeName,
                          ).format(task.deadline!),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: context.figma.labelTertiary),
                        )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.info_outline,
                  color: context.figma.labelTertiary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
