import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/candidate/jobs/models/add_position_model.dart';
import 'package:jobby_application/candidate/jobs/widgets/check_custom.dart';
import 'package:jobby_application/shared/colors/app_color.dart';


class ItemAddPosition extends StatefulWidget {
  const ItemAddPosition({super.key});

  @override
  State<ItemAddPosition> createState() => _ItemAddPositionState();
}

class _ItemAddPositionState extends State<ItemAddPosition> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: addPositionModel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CheckCustom(
          isClick: addPositionModel[index].isClick,
          title: addPositionModel[index].position,
          onTap: () {
            setState(() {
              addPositionModel[index].isClick =
              !addPositionModel[index].isClick!;
            });
          },
          onChanged: (value) {
            setState(() {
              addPositionModel[index].isClick = value;
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
        color: AppColors.kGray200,
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
              color: AppColors.kQuaternaryColor,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
