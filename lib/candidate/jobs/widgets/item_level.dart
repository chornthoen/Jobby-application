import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/jobs/models/level_model.dart';
import 'package:jobby_application/candidate/jobs/widgets/check_custom.dart';

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
              levelModel[index].isClick = !levelModel[index].isClick!;
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
