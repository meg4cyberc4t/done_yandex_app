import 'package:done_yandex_app/src/l10n/localization_extension.dart';
import 'package:flutter/material.dart';

enum TaskImportance {
  basic,
  low,
  important,
  ;

  String getTitle(BuildContext context) {
    switch (this) {
      case low:
        return context.l10n.importanceLow;
      case basic:
        return context.l10n.importanceBasic;
      case important:
        return context.l10n.importanceImportant;
    }
  }
}
