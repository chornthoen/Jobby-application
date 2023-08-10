import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/jobs/models/Expected_salary_model.dart';
import 'package:jobby_application/jobs/models/add_position_model.dart';
import 'package:jobby_application/jobs/widgets/check_custom.dart';
import 'package:jobby_application/shared/colors/app_color.dart';


class ItemExpectedSalary extends StatefulWidget {
  const ItemExpectedSalary({Key? key}) : super(key: key);

  @override
  State<ItemExpectedSalary> createState() => _ItemExpectedSalaryState();
}

class _ItemExpectedSalaryState extends State<ItemExpectedSalary> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expectedSalaryModel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CheckCustom(
          isClick: expectedSalaryModel[index].isClick,
          title: expectedSalaryModel[index].position,
          onTap: () {
            setState(() {
              expectedSalaryModel[index].isClick =
              !expectedSalaryModel[index].isClick!;
            });
          },
          onChanged: (value) {
            setState(() {
              expectedSalaryModel[index].isClick = value;
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
