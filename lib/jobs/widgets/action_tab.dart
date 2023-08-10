import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';


class ActionTop extends StatefulWidget {
  const ActionTop({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<ActionTop> createState() => _ActionTopState();
}

class _ActionTopState extends State<ActionTop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
          },
          child: const Text(
            'Clear all',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
         Text(
          widget.title,
          style:const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.kPrimaryColor,
          ),
        ),
        GestureDetector(
          onTap: () {
            context.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: AppColors.kGray200,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              PhosphorIcons.x,
              color: AppColors.kQuaternaryColor,
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
