
import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({
    super.key,
    required this.text,
    this.onPressed,
    this.child,
     required this.isClick,
  });
  final String text;
  final VoidCallback? onPressed;
  final Widget? child;
  final bool isClick;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: MediaQuery.of(context).size.width,
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
            Text(
              text,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isClick ? AppColors.kWhiteColor : AppColors.kQuinaryColor
              ),
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

