import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/jobs/models/add_position_model.dart';
import 'package:jobby_application/jobs/models/type_fo_work_model.dart';
import 'package:jobby_application/jobs/widgets/check_custom.dart';
import 'package:jobby_application/shared/colors/app_color.dart';


class ItemTypeOfWork extends StatefulWidget {
  const ItemTypeOfWork({Key? key}) : super(key: key);

  @override
  State<ItemTypeOfWork> createState() => _ItemTypeOfWorkState();
}

class _ItemTypeOfWorkState extends State<ItemTypeOfWork> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: typeOfWorkModel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CheckCustom(
          isClick: typeOfWorkModel[index].isClick,
          title: typeOfWorkModel[index].position,
          onTap: () {
            setState(() {
              typeOfWorkModel[index].isClick =
              !typeOfWorkModel[index].isClick!;
            });
          },
          onChanged: (value) {
            setState(() {
              typeOfWorkModel[index].isClick = value;
            });
          },
        );
      },
    );
  }
}

class TextAdd extends StatelessWidget {
  const TextAdd({
    Key? key,
    this.text,
    this.onTap,
  }) : super(key: key);
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
