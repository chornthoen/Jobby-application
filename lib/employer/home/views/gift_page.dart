import 'package:flutter/material.dart';
import 'package:jobby_application/employer/home/models/gift_model.dart';
import 'package:jobby_application/employer/home/widgets/item_gift.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class GiftPage extends StatefulWidget {
  const GiftPage({super.key});

  static const String routePath = '/gift-page';

  @override
  State<GiftPage> createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'Gift'),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: giftList.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final gift = giftList[index];
          return ItemGift(
            title: gift.title,
            description: gift.description,
            date: gift.date,
            status: gift.status,
          );
        },
      ),
    );
  }
}
