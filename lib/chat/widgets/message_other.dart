import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class MessageOther extends StatelessWidget {
  const MessageOther({
    super.key,
    required this.message,
    this.image,
    this.index,
  });

  final String message;
  final String? image;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (index == 0)
            SizedBox(
              child: CircleAvatar(
                radius: 14,
                backgroundColor: AppColors.kWhiteColor,
                backgroundImage: AssetImage(image!),
              ),
            ),
          if (index != 0) const SizedBox(width: 26),
          const SizedBox(width: 8),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(2),
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                border: Border.all(
                  color: AppColors.kSenaryColor,
                ),
              ),
              child: Text(
                message,
                style: const TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(width: 100),
        ],
      ),
    );
  }
}
