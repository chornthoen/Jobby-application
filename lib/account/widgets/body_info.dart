import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/models/setting_model.dart';
import 'package:jobby_application/account/views/about_jobby_page.dart';
import 'package:jobby_application/account/views/account_setting_page.dart';
import 'package:jobby_application/account/views/change_acount_page.dart';
import 'package:jobby_application/account/views/id_identification_page.dart';
import 'package:jobby_application/account/views/mange_cv_page.dart';
import 'package:jobby_application/account/views/share_with_your_friend_page.dart';
import 'package:jobby_application/account/views/your_jobby_profile_page.dart';
import 'package:jobby_application/account/views/your_work_criteria_page.dart';
import 'package:jobby_application/account/widgets/item_card.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/signin/views/sign_in_page.dart';

import '../../jobs/views/work_criteria_page.dart';

class BodyInfo extends StatefulWidget {
  const BodyInfo({
    super.key,
  });

  @override
  State<BodyInfo> createState() => _BodyInfoState();
}

class _BodyInfoState extends State<BodyInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      context.push(WorkCriteriaPage.routePath);
                      break;
                    case 'Share with your friend':
                      context.push(ShareWithYourFriendPage.routePath);
                      break;
                    case 'Change account':
                      context.push(ChangeAccountPage.routePath);
                      break;
                    case 'Log out':
                      _showBottomSheetLogout(context);
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

  //show dialog logout
  void _showBottomSheetLogout(BuildContext context) {
    BottomSheets.showBottomSheetCustom(
      context: context,
      title: 'LOG OUT ACCOUNT',
      image: 'assets/images/enter.png',
      description: 'Are you sure you want to log out? You can always log back in.',
      textButton: 'Log out',
      onPressed: () {
        setState(() {
          context.go(SignInPage.routePath);
        });
      },
    );
  }
}
