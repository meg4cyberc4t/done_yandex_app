import 'package:done_yandex_app/src/presentation/theme/figma_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension FigmaThemeContextExtension on BuildContext {
  FigmaAppTheme get figma => Theme.of(this).extension<FigmaExtension>()!.figma;
}

class AppTheme {
  static FigmaAppTheme get darkFigma => const FigmaAppTheme(
        backElevated: Color(0xFF3C3C3F),
        backPrimary: Color(0xFF161618),
        backSecondary: Color(0xFF252528),
        blue: Color(0xFF0A84FF),
        gray: Color(0xFF8E8E93),
        grayLight: Color(0xFF48484A),
        green: Color(0xFF32D74B),
        labelDisable: Color(0x26FFFFFF),
        labelPrimary: Color(0xFFFFFFFF),
        labelSecondary: Color(0x99FFFFFF),
        labelTertiary: Color(0x66FFFFFF),
        overlay: Color(0x52000000),
        red: Color(0xFFFF453A),
        redImportance: Color(0xFFFF453A),
        separator: Color(0x33FFFFFF),
        white: Color(0xFFFFFFFF),
        brightness: Brightness.dark,
      );

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
        redImportance: Color(0xFFFF3B30),
        separator: Color(0x33000000),
        white: Color(0xFFFFFFFF),
        brightness: Brightness.light,
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
        brightness: figma.brightness,
        primaryColor: figma.blue,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: figma.blue,
          foregroundColor: figma.white,
        ),
        dividerColor: lightFigma.separator,
        secondaryHeaderColor: figma.labelSecondary,
        errorColor: figma.red,
        scaffoldBackgroundColor: figma.backPrimary,
        dividerTheme: DividerThemeData(color: figma.separator),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(figma.separator),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: figma.backPrimary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: figma.backSecondary,
        ),
        extensions: [
          FigmaExtension(figma),
        ],
        useMaterial3: false,
      );
}

class FigmaExtension extends ThemeExtension<FigmaExtension> {
  FigmaExtension(this.figma);
  final FigmaAppTheme figma;

  @override
  FigmaExtension copyWith({FigmaAppTheme? figma}) {
    return FigmaExtension(figma ?? this.figma);
  }

  @override
  FigmaExtension lerp(ThemeExtension<FigmaExtension>? other, double t) {
    if (other is! FigmaExtension) return this;
    return FigmaExtension(
      FigmaAppTheme(
        backElevated:
            Color.lerp(figma.backElevated, other.figma.backElevated, t)!,
        backPrimary: Color.lerp(figma.backPrimary, other.figma.backPrimary, t)!,
        backSecondary:
            Color.lerp(figma.backSecondary, other.figma.backSecondary, t)!,
        blue: Color.lerp(figma.blue, other.figma.blue, t)!,
        brightness: other.figma.brightness,
        gray: Color.lerp(figma.gray, other.figma.gray, t)!,
        grayLight: Color.lerp(figma.grayLight, other.figma.grayLight, t)!,
        green: Color.lerp(figma.green, other.figma.green, t)!,
        labelDisable:
            Color.lerp(figma.labelDisable, other.figma.labelDisable, t)!,
        labelPrimary:
            Color.lerp(figma.labelPrimary, other.figma.labelPrimary, t)!,
        labelSecondary:
            Color.lerp(figma.labelSecondary, other.figma.labelSecondary, t)!,
        labelTertiary:
            Color.lerp(figma.labelTertiary, other.figma.labelTertiary, t)!,
        overlay: Color.lerp(figma.overlay, other.figma.overlay, t)!,
        red: Color.lerp(figma.red, other.figma.red, t)!,
        redImportance:
            Color.lerp(figma.redImportance, other.figma.redImportance, t)!,
        separator: Color.lerp(figma.separator, other.figma.separator, t)!,
        white: Color.lerp(figma.white, other.figma.white, t)!,
      ),
    );
  }
}
