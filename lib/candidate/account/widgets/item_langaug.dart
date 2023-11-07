
import 'package:flutter/cupertino.dart';
import 'package:jobby_application/candidate/account/models/languag_models.dart';
import 'package:jobby_application/candidate/jobs/widgets/check_custom.dart';
class ItemLanguage extends StatefulWidget {
  const ItemLanguage({super.key});

  @override
  State<ItemLanguage> createState() => _ItemLanguageState();
}

class _ItemLanguageState extends State<ItemLanguage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: langaugModel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return CheckCustom(
          isClick: langaugModel[index].isClick,
          title: langaugModel[index].position,
          onTap: () {
            setState(() {
              langaugModel[index].isClick =
              !langaugModel[index].isClick!;
            });
          },
          onChanged: (value) {
            setState(() {
              langaugModel[index].isClick = value;
            });
          },
        );
      },
    );
  }
}
