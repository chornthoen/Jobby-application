import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.logo = '',
    this.subTitle = '',
    this.child,
    this.icon1,
    this.icon2,
    this.onTap1,
    this.onTap2,
    this.size = 18,
    this.onBackTap,
  });

  final String? title;
  final String? logo;
  final String? subTitle;
  final Widget? child;
  final IconData? icon1;
  final IconData? icon2;
  final double? size;
  final VoidCallback? onTap1;
  final VoidCallback? onTap2;
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
          size: 28,
        ),
      ),
      centerTitle: true,
      title: Text(
        title!,
        style:  TextStyle(
          color: AppColors.kPrimaryColor,
          fontSize: size,
          fontWeight: FontWeight.w600,
        ),
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
                onPressed: onTap1,
                icon:  Icon(
                  icon1,
                  color: AppColors.kPrimaryColor,
                  size: 24,
                ),
              ),
              IconButton(
                splashRadius: 24,
                onPressed: onTap2,
                icon:  Icon(
                  icon2,
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
            style: const TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
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
