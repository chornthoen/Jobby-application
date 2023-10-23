import 'package:flutter/material.dart';

import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class TextAndButton extends StatelessWidget {
  const TextAndButton({
    required this.text,
    required this.textButton,
    super.key,
    this.onPressed,
  });

  final String text;
  final VoidCallback? onPressed;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: CustomTextStyles.titleMediumRegularBlack,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            textButton,
            style: CustomTextStyles.buttonTitleSmallSemiBoldBlack,
          ),
        ),
      ],
    );
  }
}
