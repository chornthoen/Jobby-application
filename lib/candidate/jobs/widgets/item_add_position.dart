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


