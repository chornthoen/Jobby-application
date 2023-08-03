import 'package:flutter/material.dart';
import 'package:jobby_application/account/models/setting_model.dart';
import 'package:jobby_application/account/widgets/item_card.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class BodyInfo extends StatelessWidget {
  const BodyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kWhiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'General Information',
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: listSetting.length,
            itemBuilder: (context, index) {
              final item = listSetting[index];
              return ItemCard(
                title: item.title,
                icon: item.icon,
                onPressed: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}
