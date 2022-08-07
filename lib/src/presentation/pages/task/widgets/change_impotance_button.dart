import 'package:done_yandex_app/src/data/enums/task_impotance_enum.dart';
import 'package:done_yandex_app/src/l10n/localization_extension.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ChangeImportanceButton extends StatelessWidget {
  const ChangeImportanceButton({
    required this.onChanged,
    required this.value,
    Key? key,
  }) : super(key: key);
  final TaskImportance value;
  final ValueChanged<TaskImportance?> onChanged;

  final double tileHeight = 70;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: tileHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ListTile(
            tileColor: Colors.transparent,
            title: Text(
              context.l10n.importance,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle: Text(
              value.getTitle(context),
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: AppTheme.figmaOf(context).labelTertiary),
            ),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              isDense: true,
              items: TaskImportance.values
                  .map((TaskImportance e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e == TaskImportance.important
                              ? "!! ${e.getTitle(context)}"
                              : e.getTitle(context),
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: e == TaskImportance.important
                                        ? context.figma.red
                                        : context.figma.labelPrimary,
                                  ),
                        ),
                      ))
                  .toList(),
              onChanged: onChanged,
              icon: const SizedBox(),
            ),
          )
        ],
      ),
    );
  }
}
