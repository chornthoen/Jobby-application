
import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/jobs/models/industry_model.dart';
import 'package:jobby_application/candidate/jobs/widgets/check_custom.dart';


class ItemPeople extends StatefulWidget {
  const ItemPeople({super.key});

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
              peopleModel[index].isClick = !peopleModel[index].isClick!;
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
