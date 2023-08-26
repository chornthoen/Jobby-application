
import 'package:flutter/cupertino.dart';
import 'package:jobby_application/account/models/languag_models.dart';
import 'package:jobby_application/jobs/widgets/check_custom.dart';

class ItemLangauge extends StatefulWidget {
  const ItemLangauge({super.key});

  @override
  State<ItemLangauge> createState() => _ItemLangaugeState();
}

class _ItemLangaugeState extends State<ItemLangauge> {
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
