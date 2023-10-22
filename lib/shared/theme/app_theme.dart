import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/theme_helper.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: 'Kantumruy Pro',
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
    bodySmall: TextStyle(
      color: appTheme.gray900,
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
