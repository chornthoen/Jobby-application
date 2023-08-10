
import 'package:flutter/cupertino.dart';
import 'package:jobby_application/account/models/hobby_models.dart';
import 'package:jobby_application/account/models/languag_models.dart';
import 'package:jobby_application/jobs/widgets/check_custom.dart';

class ItemHobby extends StatefulWidget {
  const ItemHobby({Key? key}) : super(key: key);

  @override
  State<ItemHobby> createState() => _ItemHobbyState();
}

class _ItemHobbyState extends State<ItemHobby> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hobbyModel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CheckCustom(
          isClick: hobbyModel[index].isClick,
          title: hobbyModel[index].position,
          onTap: () {
            setState(() {
              hobbyModel[index].isClick =
              !hobbyModel[index].isClick!;
            });
          },
          onChanged: (value) {
            setState(() {
              hobbyModel[index].isClick = value;
            });
          },
        );
      },
    );
  }
}