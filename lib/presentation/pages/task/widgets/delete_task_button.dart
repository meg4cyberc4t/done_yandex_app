import 'package:done_yandex_app/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DeleteTaskButton extends StatelessWidget {
  const DeleteTaskButton({
    Key? key,
    required this.enabled,
    required this.onPressed,
  }) : super(key: key);
  final VoidCallback onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final Color foregroundColor = enabled
        ? AppTheme.figmaOf(context).red
        : AppTheme.figmaOf(context).labelDisable;
    return ListTile(
      onTap: onPressed,
      enabled: enabled,
      tileColor: Colors.transparent,
      textColor: foregroundColor,
      iconColor: foregroundColor,
      leading: Icon(
        Icons.delete,
        color: foregroundColor,
      ),
      minLeadingWidth: 0,
      title: Text(
        'Удалить',
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(color: foregroundColor),
      ),
    );
  }
}
