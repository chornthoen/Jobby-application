import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/models/setting_model.dart';
import 'package:jobby_application/account/views/about_jobby_page.dart';
import 'package:jobby_application/account/views/account_setting_page.dart';
import 'package:jobby_application/account/views/id_identification_page.dart';
import 'package:jobby_application/account/views/mange_cv_page.dart';
import 'package:jobby_application/account/views/share_with_your_friend_page.dart';
import 'package:jobby_application/account/views/your_jobby_profile_page.dart';
import 'package:jobby_application/account/views/your_work_criteria_page.dart';
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
                onPressed: () {
                  switch (item.title) {
                    case 'Your Jobby profile':
                      context.push(YourJobbyProfilePage.routePath);
                      break;
                    case 'Account setting':
                      context.push(AccountSettingPage.routePath);
                      break;
                    case 'About Jobby':
                      context.push(AboutJobbyPage.routePath);
                      break;
                    case 'Manage CV':
                      context.push(MangeCVPage.routePath);
                      break;
                    case 'ID identification':
                      context.push(IDIdentificationPage.routePath);
                      break;
                    case 'Your work criteria':
                      context.push(YourWorkCriteriaPage.routePath);
                      break;
                    case 'Share with your friend':
                      context.push(ShareWithYourFriendPage.routePath);
                      break;
                    default:
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
