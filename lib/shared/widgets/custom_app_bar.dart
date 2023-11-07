import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.logo = '',
    this.subTitle = '',
    this.child,
    this.iconRight,
    this.iconLeft,
    this.onTapRight,
    this.onTapLeft,
    this.size = 18,
    this.onBackTap,
  });

  final String? title;
  final String? logo;
  final String? subTitle;
  final Widget? child;
  final IconData? iconRight;
  final IconData? iconLeft;
  final double? size;
  final VoidCallback? onTapRight;
  final VoidCallback? onTapLeft;
  final VoidCallback? onBackTap;

  @override
  Size get preferredSize => const Size.fromHeight(62);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.kBackgroundColor,
      elevation: 0,
      toolbarHeight: 62,
      leadingWidth: 60,
      leading: IconButton(
        splashRadius: 25,
        onPressed: () {
          if (onBackTap != null) {
            onBackTap!();
          }
          else {
            Navigator.pop(context);
          }

        },
        icon: const Icon(
          PhosphorIcons.arrow_left,
          color: AppColors.kPrimaryColor,
          size: AppSpacing.xlg,
        ),
      ),
      centerTitle: true,
      title: Text(
        title!,
        style:  CustomTextStyles.titleMediumSemiBoldBlack,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 4, top: 4),
          child: child,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Row(
            children: [
              IconButton(
                splashRadius: 24,
                onPressed: onTapRight,
                icon:  Icon(
                  iconRight,
                  color: AppColors.kPrimaryColor,
                  size: 24,
                ),
              ),
              IconButton(
                splashRadius: 24,
                onPressed: onTapLeft,
                icon:  Icon(
                  iconLeft,
                  color: AppColors.kPrimaryColor,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 20),
          child: Text(
            logo!,
            style: CustomTextStyles.headlineMediumSemiBold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 20),
          child: Text(
            subTitle!,
            style: CustomTextStyles.headlineSmallMedium,
          ),
        ),
      ],
    );
  }
}
