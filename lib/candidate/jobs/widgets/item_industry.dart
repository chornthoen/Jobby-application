import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/jobs/models/industry_model.dart';
import 'package:jobby_application/candidate/jobs/widgets/check_custom.dart';

class ItemIndustry extends StatefulWidget {
  const ItemIndustry({super.key});

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
              industryModel[index].isClick = !industryModel[index].isClick!;
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
