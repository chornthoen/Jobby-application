import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';


class CheckCustom extends StatefulWidget {
  const CheckCustom({
    super.key,
    this.isClick,
    this.title,
    this.onTap,
    this.onChanged,
  });

  final bool? isClick;
  final String? title;
  final VoidCallback? onTap;
  final Function(bool?)? onChanged;

  @override
  State<CheckCustom> createState() => _CheckCustomState();
}

class _CheckCustomState extends State<CheckCustom> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap,
      minVerticalPadding: 0,
      contentPadding: const EdgeInsets.only(
        left: 10,
        right: 4,
      ),
      title: Row(
        children: [
          Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            splashRadius: 20,
            value: widget.isClick,
            checkColor: Colors.white,
            focusColor: AppColors.kPrimaryColor,
            activeColor: AppColors.kPrimaryColor,
            onChanged: widget.onChanged,
          ),
          Text(
            widget.title!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
