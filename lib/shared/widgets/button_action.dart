
import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({
    super.key,
    required this.text,
    this.onPressed,
    this.child,
     required this.isClick,
    this.width = double.infinity,
    this.icon,
  });
  final String text;
  final VoidCallback? onPressed;
  final Widget? child;
  final bool isClick;
  final double? width;
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: isClick ? AppColors.kPrimaryColor :
          AppColors.kSeptenaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          shadowColor: BoxShadow(
            color: AppColors.kBlackColor.withOpacity(0.8),
            blurRadius: 10,
            offset: const Offset(0, 9),
          ).color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  text,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: isClick ? AppColors.kWhiteColor : AppColors.kQuinaryColor,
                  ),
                ),
                SizedBox(width: icon != null ? 5 : 0),
                Icon(
                  icon,
                  color: isClick ? AppColors.kWhiteColor : AppColors.kQuinaryColor,
                  size: 20,
                )
              ],
            ),
            const SizedBox(width: 10),
            Center(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

