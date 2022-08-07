import 'package:done_yandex_app/src/data/enums/task_impotance_enum.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    required this.done,
    required this.importance,
    required this.onChanged,
    Key? key,
  }) : super(key: key);
  final bool done;
  final TaskImportance importance;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    Color fillColor = context.figma.separator;
    if (done) {
      fillColor = context.figma.green;
    } else if (importance == TaskImportance.important) {
      fillColor = context.figma.redImportance;
    }
    return Checkbox(
      value: done,
      onChanged: onChanged,
      fillColor: MaterialStateProperty.all(fillColor),
    );
  }
}
