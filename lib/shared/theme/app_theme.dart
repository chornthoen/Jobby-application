import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/theme_helper.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: 'Kantumruy Pro',
    textTheme:  TextThemes.textTheme(ColorSchemes.primaryColorScheme),
    appBarTheme: const AppBarTheme(color: AppColors.kPrimaryColor),
    colorScheme: const ColorScheme.light(
      primary: AppColors.kPrimaryColor,
    ),
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

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyMedium: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 14,
      fontFamily: 'Kantumruy Pro',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: const TextStyle(
      //color: appTheme.gray900,
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
    headlineSmall: const TextStyle(
      //color: appTheme.gray900,
      fontSize: 24,
      fontFamily: 'Kantumruy Pro',
      fontWeight: FontWeight.w600,
    ),
    labelLarge: const TextStyle(
      //color: appTheme.gray900,
      fontSize: 12,
      fontFamily: 'Kantumruy Pro',
      fontWeight: FontWeight.w500,
    ),
    labelMedium: const TextStyle(
     // color: appTheme.gray900,
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
    titleLarge: const TextStyle(
     // color: appTheme.gray900,
      fontSize: 20,
      fontFamily: 'Kantumruy Pro',
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle(
     // color: appTheme.gray900,
      fontSize: 16,
      fontFamily: 'Kantumruy Pro',
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle(
     // color: appTheme.gray900,
      fontSize: 14,
      fontFamily: 'Kantumruy Pro',
      fontWeight: FontWeight.w400,
    ),
  );
}

class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF0A113C),
    primaryContainer: Color(0XFF434E58),
    secondary: Color(0XFF434E58),
    secondaryContainer: Color(0XE5FFFFFF),
    tertiary: Color(0XFF434E58),
    tertiaryContainer: Color(0XE5FFFFFF),

    // Background colors
    background: Color(0XFF434E58),

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
