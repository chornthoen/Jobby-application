import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/jobs/models/add_position_model.dart';
import 'package:jobby_application/jobs/models/industry_model.dart';
import 'package:jobby_application/jobs/widgets/check_custom.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

import '../../employer/profile/views/company_profile_page.dart';


// class ItemIndustry extends StatefulWidget {
//   const ItemIndustry({Key? key}) : super(key: key);
//
//   @override
//   State<ItemIndustry> createState() => _ItemIndustryState();
// }
class ItemIndustry extends StatefulWidget {
  const ItemIndustry({Key? key}) : super(key: key);

  @override
  State<ItemIndustry> createState() => _ItemIndustryState();
}

class _ItemIndustryState extends State<ItemIndustry> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: industryModel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CheckCustom(
          isClick: industryModel[index].isClick,
          title: industryModel[index].position,
          onTap: () {
            setState(() {
              industryModel[index].isClick =
              !industryModel[index].isClick!;
            });
          },
          onChanged: (value) {
            setState(() {
              industryModel[index].isClick = value;
            });
          },
        );
      },
    );
  }
}



class ItemPeople extends StatefulWidget {
  const ItemPeople({Key? key}) : super(key: key);

  @override
  State<ItemPeople> createState() => _ItemPeopleState();
}


class _ItemPeopleState extends State<ItemPeople> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: peopleModel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CheckCustom(
          isClick: peopleModel[index].isClick,
          title: peopleModel[index].position,
          onTap: () {
            setState(() {
              peopleModel[index].isClick =
              !peopleModel[index].isClick!;
            });
          },
          onChanged: (value) {
            setState(() {
              peopleModel[index].isClick = value;
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
