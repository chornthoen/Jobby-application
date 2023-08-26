import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class DropdownButtonCustom extends StatefulWidget {
  const DropdownButtonCustom({
    required this.level,
    required this.levelValue,
    required this.onChanged,
    super.key,
  });

  final List<String> level;

  final String levelValue;
  final ValueChanged<String> onChanged;

  @override
  State<DropdownButtonCustom> createState() => _DropdownButtonCustomState();
}

class _DropdownButtonCustomState extends State<DropdownButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: AppColors.kGray200,
        ),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: const SizedBox(),
        icon: const Icon(
          PhosphorIcons.caret_down,
          color: AppColors.kQuaternaryColor,
        ),
        value: widget.levelValue,
        onChanged: (String? newValue) {
          setState(() {
            widget.onChanged(newValue!);
          });
        },
        items: widget.level.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                color: AppColors.kPrimaryColor,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
