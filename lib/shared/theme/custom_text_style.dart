import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/theme/theme_helper.dart';

class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeSemiBoldBlack =>
      theme.textTheme.bodyLarge!.copyWith(
        color: AppColors.kBlackColor,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );

  static TextStyle get bodyMediumGray900 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );

  static TextStyle get bodyMediumGray900_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
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

  static TextStyle get headlineMediumSemiBold =>
      theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 22,
        color: AppColors.kBlackColor,
      );



  static TextStyle get headlineSmallPlusJakartaSansPrimary =>
      theme.textTheme.headlineSmall!.plusJakartaSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headlineSmallPlusJakartaSansPrimaryBold =>
      theme.textTheme.headlineSmall!.plusJakartaSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
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

  // Label text style
  static TextStyle get labelLargeGray600 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
      );

  static TextStyle get labelLargeOnPrimary =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );

  static TextStyle get labelLargeOnPrimarySemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );

  // Title text style

  static TextStyle get titleMediumBlack =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kPrimaryColor,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumGray500 =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kColorGray500,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get titleMediumGray700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: AppColors.kColorGray700,
        fontWeight: FontWeight.w400,
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

}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'Kantumruy Pro',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Kantumruy Pro',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Kantumruy Pro',
    );
  }
  TextStyle get kantumruyPro {
    return copyWith(
      fontFamily: 'Kantumruy Pro',
    );
  }
}
