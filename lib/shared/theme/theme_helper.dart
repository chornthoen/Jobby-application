import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

String _appTheme = 'primary';

class ThemeHelper {
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors(),
  };

  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme,
  };

  void changeTheme(String newTheme) {
    _appTheme = newTheme;
  }

  PrimaryColors _getThemeColors() {
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          '$_appTheme is not found.Make sure you have added this theme'
          ' class in JSON Try running flutter pub run build_runner');
    }

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  ThemeData _getThemeData() {
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          '$_appTheme is not found.Make sure you have added this theme'
          ' class in JSON Try running flutter pub run build_runner');
    }

    final colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      fontFamily: 'Kantumruy Pro',
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer.withOpacity(1),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(color: appTheme.black900),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: const BorderSide(),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.indigo50,
      ),
      appBarTheme: const AppBarTheme(color: AppColors.kPrimaryColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimaryColor,
          foregroundColor: AppColors.kBackgroundColor,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.lg,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.sm),
          ),
          elevation: 0,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.sm),
          ),
          elevation: 0,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.sm),
        ),
        isDense: true,
      ),
      iconTheme: const IconThemeData(size: AppSpacing.lg),
    );
  }

  PrimaryColors themeColor() => _getThemeColors();

  ThemeData themeData() => _getThemeData();
}

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 14,
          fontFamily: 'Kantumruy Pro',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray300,
          fontSize: 12,
          fontFamily: 'Kantumruy Pro',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 32,
          fontFamily: 'Kantumruy Pro',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 24,
          fontFamily: 'Kantumruy Pro',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 12,
          fontFamily: 'Kantumruy Pro',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 10,
          fontFamily: 'Kantumruy Pro',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 8,
          fontFamily: 'Kantumruy Pro',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 20,
          fontFamily: 'Kantumruy Pro',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 16,
          fontFamily: 'Kantumruy Pro',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 14,
          fontFamily: 'Kantumruy Pro',
          fontWeight: FontWeight.w400,
        ),
      );
}

class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF080A12),
    primaryContainer: Color(0XFF434E58),
    secondary: Color(0XFF434E58),
    secondaryContainer: Color(0XE5FFFFFF),
    tertiary: Color(0XFF434E58),
    tertiaryContainer: Color(0XE5FFFFFF),

    // Background colors
    background: Color(0XFFFFFFFF),

    // Surface colors
    surface: Color(0XFF434E58),
    surfaceTint: Color(0XFF78828A),
    surfaceVariant: Color(0XE5FFFFFF),

    // Error colors
    error: Color(0XFF78828A),
    errorContainer: Color(0X3D1F1D2B),
    onError: Color(0XFF0A113C),
    onErrorContainer: Color(0XFFB3B3B3),

    // On colors(text colors)
    onBackground: Color(0XE5FFFFFF),
    onInverseSurface: Color(0XFF0A113C),
    onPrimary: Color(0XFF78828A),
    onPrimaryContainer: Color(0XE5FFFFFF),
    onSecondary: Color(0XE5FFFFFF),
    onSecondaryContainer: Color(0XFF1F2C37),
    onTertiary: Color(0XE5FFFFFF),
    onTertiaryContainer: Color(0XFF1F2C37),

    // Other colors
    outline: Color(0XFF78828A),
    outlineVariant: Color(0XFF434E58),
    scrim: Color(0XFF434E58),
    shadow: Color(0XFF78828A),

    // Inverse colors
    inversePrimary: Color(0XFF434E58),
    inverseSurface: Color(0XFF78828A),

    // Pending colors
    onSurface: Color(0XE5FFFFFF),
    onSurfaceVariant: Color(0XFF1F2C37),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => const Color(0XFF000000);

  // Blue
  Color get blue500 => const Color(0XFF2196F3);

  // BlueGray
  Color get blueGray100 => const Color(0XFFD1D8DD);

  Color get blueGray300 => const Color(0XFF9CA4AB);

  Color get blueGray400 => const Color(0XFF888888);

  Color get blueGray50 => const Color(0XFFEDF2F7);

  Color get blueGray5001 => const Color(0XFFECF1F6);

  Color get blueGray800 => const Color(0XFF2F374B);

  // DeepPurple
  Color get deepPurple100 => const Color(0XFFC9BFFE);

  // Gray
  Color get gray100 => const Color(0XFFF6F6F6);

  Color get gray10001 => const Color(0XFFF7F7F7);

  Color get gray200 => const Color(0XFFEBEBEF);

  Color get gray30059 => const Color(0X59DCDCDC);

  Color get gray50 => const Color(0XFFF9F9F9);

  Color get gray500 => const Color(0XFFA1A6AC);

  Color get gray5001 => const Color(0XFFFCFCFC);

  Color get gray600 => const Color(0XFF66707A);

  Color get gray900 => const Color(0XFF171725);

  // Grayd
  Color get gray7003d => const Color(0X3D894668);

  // Grayf
  Color get gray9003f => const Color(0X3F0B123D);

  // Green
  Color get greenA700 => const Color(0XFF00C566);

  // Indigo
  Color get indigo50 => const Color(0XFFE3E7EB);

  Color get indigo5001 => const Color(0XFFE3E9ED);

  // Orange
  Color get orange200 => const Color(0XFFF5C973);

  // Red
  Color get red100 => const Color(0XFFFFCCD2);

  Color get red10047 => const Color(0X47FFCBD2);

  Color get red50 => const Color(0XFFFFEFF1);

  Color get red500 => const Color(0XFFF54646);

  Color get redA200 => const Color(0XFFFF4747);

  // White
  Color get whiteA700 => const Color(0XFFFEFEFE);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();

ThemeData get theme => ThemeHelper().themeData();
