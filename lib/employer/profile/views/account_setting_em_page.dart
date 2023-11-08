import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/account/widgets/item_card.dart';
import 'package:jobby_application/employer/profile/views/change_password_em_page.dart';
import 'package:jobby_application/employer/profile/views/setting_notification_em_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class AccountSettingEmPage extends StatefulWidget {
  const AccountSettingEmPage({super.key});

  static const String routePath = '/account_setting_em_page';

  @override
  State<AccountSettingEmPage> createState() => _AccountSettingEmPageState();
}

class _AccountSettingEmPageState extends State<AccountSettingEmPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar:const CustomAppBar(title: 'Account Setting'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: Column(
          children: [
            ItemCard(
              title: 'Notification',
              icon: 'assets/svg/notification.svg',
              onPressed: () {
                context.push(SettingNotificationEmPage.routePath);
              },
            ),
            ItemCard(
              title: 'Change Password',
              icon: 'assets/svg/lock.svg',
              onPressed: () {
                context.push(ChangePasswordEmPage.routePath);
              },
            ),
          ],
        ),
      ),
    );
  }
}
