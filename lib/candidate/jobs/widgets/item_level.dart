import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/candidate/jobs/models/level_model.dart';
import 'package:jobby_application/candidate/jobs/widgets/check_custom.dart';
import 'package:jobby_application/shared/colors/app_color.dart';


class ItemLevel extends StatefulWidget {
  const ItemLevel({super.key});

  @override
  State<ItemLevel> createState() => _ItemLevelState();
}

class _ItemLevelState extends State<ItemLevel> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: levelModel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CheckCustom(
          isClick: levelModel[index].isClick,
          title: levelModel[index].position,
          onTap: () {
            setState(() {
              levelModel[index].isClick =
              !levelModel[index].isClick!;
            });
          },
          onChanged: (value) {
            setState(() {
              levelModel[index].isClick = value;
            });
          },
        );
      },
    );
  }
}

class TextAdd extends StatelessWidget {
  const TextAdd({
    super.key,
    this.text,
    this.onTap,
  });
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: AppColors.kColorGray200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Text(
            text!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.kPrimaryColor,
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: onTap,
            child: const Icon(
              PhosphorIcons.x,
              color: AppColors.kColorGray600,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
