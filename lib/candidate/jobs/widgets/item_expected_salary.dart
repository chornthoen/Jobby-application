import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/jobs/models/Expected_salary_model.dart';
import 'package:jobby_application/candidate/jobs/widgets/check_custom.dart';


class ItemExpectedSalary extends StatefulWidget {
  const ItemExpectedSalary({super.key});

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
