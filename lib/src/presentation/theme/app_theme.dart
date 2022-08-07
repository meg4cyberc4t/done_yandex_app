import 'package:done_yandex_app/src/presentation/theme/figma_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension FigmaThemeContextExtension on BuildContext {
  FigmaAppTheme get figma => AppTheme.figmaOf(this);
}

class AppTheme {
  static FigmaAppTheme figmaOf(BuildContext context) => lightFigma;
  static FigmaAppTheme get lightFigma => const FigmaAppTheme(
        backElevated: Color(0xFFFFFFFF),
        backPrimary: Color(0xFFF7F6F2),
        backSecondary: Color(0xFFFFFFFF),
        blue: Color(0xFF007AFF),
        gray: Color(0xFF8E8E93),
        grayLight: Color(0xFFD1D1D6),
        green: Color(0xFF34C759),
        labelDisable: Color(0x26000000),
        labelPrimary: Color(0xFF000000),
        labelSecondary: Color(0x99000000),
        labelTertiary: Color(0x4D000000),
        overlay: Color(0x0F000000),
        red: Color(0xFFFF3B30),
        separator: Color(0x33000000),
        white: Color(0xFFFFFFFF),
      );

  static TextTheme _textTheme(FigmaAppTheme figma) =>
      GoogleFonts.robotoTextTheme(
        TextTheme(
          // Large title
          headline5: TextStyle(
            fontSize: 32,
            height: 38 / 32,
            fontWeight: FontWeight.w500,
            color: figma.labelPrimary,
          ),
          // Title
          headline6: TextStyle(
            fontSize: 20,
            height: 32 / 20,
            fontWeight: FontWeight.w500,
            color: figma.labelPrimary,
          ),
          // Button
          button: const TextStyle(
            fontSize: 14,
            height: 24 / 14,
            fontWeight: FontWeight.w500,
          ),
          // Body
          bodyText1: TextStyle(
            fontSize: 16,
            height: 20 / 16,
            fontWeight: FontWeight.w400,
            color: figma.labelPrimary,
          ),
          // Text Field
          bodyText2: const TextStyle(
            fontSize: 16,
            height: 18 / 16,
            fontWeight: FontWeight.w400,
          ),
          // Subhead
          subtitle1: const TextStyle(
            fontSize: 14,
            height: 20 / 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      );

  static ThemeData theme(FigmaAppTheme figma) => ThemeData(
        textTheme: _textTheme(figma),
        primaryColor: figma.blue,
        dividerColor: lightFigma.separator,
        secondaryHeaderColor: figma.labelSecondary,
        errorColor: figma.red,
        scaffoldBackgroundColor: figma.backPrimary,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(figma.separator),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: figma.backPrimary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: figma.backSecondary,
        ),
        useMaterial3: false,
      );
}
