import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/theme/theme_helper.dart';

class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeSemiBoldBlack =>
      theme.textTheme.bodyLarge!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );

  static TextStyle get bodyMediumBlack => theme.textTheme.bodyMedium!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodySmallBlack => theme.textTheme.bodySmall!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodySmallMediumGray600 =>
      theme.textTheme.bodySmall!.copyWith(
        color: AppColors.kColorGray600,
        fontWeight: FontWeight.w500,
      );

  // display text style
  static TextStyle get displayMediumBlack =>
      theme.textTheme.displayMedium!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w700,
        fontSize: 40,
      );

  static TextStyle get displayLargeBlack =>
      theme.textTheme.displayLarge!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get displaySmallBlack =>
      theme.textTheme.displaySmall!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w700,
      );

  // Headline text style
  static TextStyle get headlineLarge =>
      theme.textTheme.headlineLarge!.kantumruyPro.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get headlineSmallMedium =>
      theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );

  static TextStyle get headlineSmallBold =>
      theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 20,
      );

  static TextStyle get headlineMediumSemiBold =>
      theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 22,
        color: AppColors.kBlackColor,
      );

  static TextStyle get headlineBoldGreen400 =>
      theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 28,
        color: AppColors.kGreenColor400,
      );

  //button text style
  static TextStyle get buttonMediumBlack =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kPrimaryColor,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get buttonMediumWhite =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kWhiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );

  static TextStyle get buttonTitleSmallSemiBoldBlack =>
      theme.textTheme.titleSmall!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get buttonTitleSmallSemiBoldWhite =>
      theme.textTheme.titleSmall!.copyWith(
        color: AppColors.kWhiteColor,
        fontWeight: FontWeight.w600,
      );

  // Title text style

  static TextStyle get titleSmallSemiBoldRed =>
      theme.textTheme.titleSmall!.copyWith(
        color: AppColors.kRedColor,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumBlack =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kPrimaryColor,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleSmallSemiBoldBlack =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kPrimaryColor,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumGray500 =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kColorGray500,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get titleMediumRegularGray500 =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kColorGray500,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get titleSmallMediumGray500 =>
      theme.textTheme.titleSmall!.copyWith(
        color: AppColors.kColorGray500,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleSmallBlack => theme.textTheme.titleSmall!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get titleMediumGray700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kColorGray700,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get titleSmallMediumGray600 =>
      theme.textTheme.titleSmall!.copyWith(
        color: AppColors.kColorGray600,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumRegularBlack =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get titleMediumRegularWhite =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kWhiteColor,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get titleMediumRegularGray600 =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kColorGray600,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get titleMediumSemiBoldBlack =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  static TextStyle get titleSmallRegularWhite =>
      theme.textTheme.titleSmall!.copyWith(
        color: AppColors.kWhiteColor,
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get kantumruyPro {
    return copyWith(
      fontFamily: 'Kantumruy Pro',
    );
  }
}
