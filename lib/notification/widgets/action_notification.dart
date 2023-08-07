import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ActionNotification extends StatefulWidget {
  const ActionNotification({
    Key? key,
    required this.title,
    required this.description,
    required this.isSwitch,
    required this.onChanged,
  }) : super(key: key);
  final String title;
  final String description;
  final bool isSwitch;
  final Function(bool) onChanged;

  @override
  State<ActionNotification> createState() => _ActionNotificationState();
}

class _ActionNotificationState extends State<ActionNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Switch(
                value: widget.isSwitch,
                onChanged: widget.onChanged,
                activeColor: AppColors.kPrimaryColor,
              )
            ],
          ),
          Text(
            widget.description,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.kQuaternaryColor,
            ),
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}