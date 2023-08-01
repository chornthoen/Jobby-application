import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.logo = '',
    this.subTitle = '',
    this.child,
  });

  final String? title;
  final String? logo;
  final String? subTitle;
  final Widget? child;

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
          Navigator.pop(context);
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
        style: const TextStyle(
          color: AppColors.kPrimaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 4, top: 4),
          child: child,
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
            style: const TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
