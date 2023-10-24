import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class LabelIconAndText extends StatelessWidget {
  const LabelIconAndText({
    required this.icon, required this.text, super.key,
  });
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 25,
          height: 25,
          color: AppColors.kPrimaryColor,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: CustomTextStyles.bodyLargeSemiBoldBlack,
        ),
      ],
    );
  }
}
