import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'figma_app_theme.freezed.dart';

@Freezed(
  addImplicitFinal: true,
  fromJson: false,
  toJson: false,
)
class FigmaAppTheme with _$FigmaAppTheme {
  const factory FigmaAppTheme({
    required Color separator,
    required Color overlay,
    required Color labelPrimary,
    required Color labelSecondary,
    required Color labelTertiary,
    required Color labelDisable,
    required Color red,
    required Color redImportance,
    required Color green,
    required Color blue,
    required Color gray,
    required Color grayLight,
    required Color white,
    required Color backPrimary,
    required Color backSecondary,
    required Color backElevated,
  }) = _FigmaAppTheme;
}
