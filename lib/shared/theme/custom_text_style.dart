import 'package:flutter/material.dart';
import 'package:jobby_application/shared/theme/theme_helper.dart';

class CustomTextStyles {
  // Body text style
  static TextStyle get bodyMediumBluegray300 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );

  static TextStyle get bodyMediumGray900 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );

  static TextStyle get bodyMediumGray900_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );

  static TextStyle get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );

  static TextStyle get bodySmallGray600_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600.withOpacity(0.49),
      );

  // Headline text style
  static TextStyle get headlineSmallPlusJakartaSans =>
      theme.textTheme.headlineSmall!.plusJakartaSans.copyWith(
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headlineSmallPlusJakartaSansBold =>
      theme.textTheme.headlineSmall!.plusJakartaSans.copyWith(
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headlineSmallPlusJakartaSansGray5001 =>
      theme.textTheme.headlineSmall!.plusJakartaSans.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headlineSmallPlusJakartaSansGray5001Bold =>
      theme.textTheme.headlineSmall!.plusJakartaSans.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headlineSmallPlusJakartaSansOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.plusJakartaSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
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

  // Label text style
  static TextStyle get labelLargeBluegray300 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
      );

  static TextStyle get labelLargeGray5001 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5001,
      );

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

  static TextStyle get labelLargePlusJakartaSansBluegray800 =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get labelLargePlusJakartaSansOnPrimary =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get labelLargePrimary =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );

  // Title text style
  static TextStyle get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumBluegray300 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
      );

  static TextStyle get titleMediumGray5001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
      );

  static TextStyle get titleMediumGreenA700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA700,
      );

  static TextStyle get titleMediumOnPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );

  static TextStyle get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );

  static TextStyle get titleMediumOnPrimary_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );

  static TextStyle get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumPlusJakartaSans =>
      theme.textTheme.titleMedium!.plusJakartaSans.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumPlusJakartaSansBold =>
      theme.textTheme.titleMedium!.plusJakartaSans.copyWith(
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumPlusJakartaSansGray5001 =>
      theme.textTheme.titleMedium!.plusJakartaSans.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumPlusJakartaSansOnPrimary =>
      theme.textTheme.titleMedium!.plusJakartaSans.copyWith(
        color: theme.colorScheme.onPrimary,
      );

  static TextStyle get titleMediumPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumPrimary_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get titleMediumRedA200 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumSemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallBluegray300 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
      );

  static TextStyle get titleSmallBluegray300_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
      );

  static TextStyle get titleSmallDMSansGray500 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.gray500,
      );

  static TextStyle get titleSmallGray5001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5001,
      );

  static TextStyle get titleSmallOnPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );

  static TextStyle get titleSmallOnPrimary_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );

  static TextStyle get titleSmallPlusJakartaSansGray5001 =>
      theme.textTheme.titleSmall!.plusJakartaSans.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallPlusJakartaSansGray600 =>
      theme.textTheme.titleSmall!.plusJakartaSans.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallPlusJakartaSansIndigo5001 =>
      theme.textTheme.titleSmall!.plusJakartaSans.copyWith(
        color: appTheme.indigo5001,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallPlusJakartaSansOnPrimary =>
      theme.textTheme.titleSmall!.plusJakartaSans.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallPlusJakartaSansOnPrimary_1 =>
      theme.textTheme.titleSmall!.plusJakartaSans.copyWith(
        color: theme.colorScheme.onPrimary,
      );

  static TextStyle get titleSmallPlusJakartaSansRedA200 =>
      theme.textTheme.titleSmall!.plusJakartaSans.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallPoppins =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get titleSmallRedA200 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA200,
      );

  static TextStyle get titleSmallSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallSemiBold_1 =>
      theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
  TextStyle get kantumruyPro {
    return copyWith(
      fontFamily: 'Kantumruy Pro',
    );
  }
}
