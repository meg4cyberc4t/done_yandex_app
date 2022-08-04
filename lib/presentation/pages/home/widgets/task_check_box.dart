import 'package:done_yandex_app/data/enums/task_impotance_enum.dart';
import 'package:done_yandex_app/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    required this.done,
    required this.importance,
    required this.onChanged,
    Key? key,
  }) : super(key: key);
  final bool done;
  final TaskImportance importance;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    Color fillColor = context.figma.separator;
    if (done) {
      fillColor = context.figma.green;
    } else if (importance == TaskImportance.important) {
      fillColor = context.figma.red;
    }
    return Checkbox(
      value: done,
      onChanged: onChanged,
      fillColor: MaterialStateProperty.all(fillColor),
    );
  }
}
