import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/jobs/models/type_fo_work_model.dart';
import 'package:jobby_application/candidate/jobs/widgets/check_custom.dart';


class ItemTypeOfWork extends StatefulWidget {
  const ItemTypeOfWork({super.key});

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
