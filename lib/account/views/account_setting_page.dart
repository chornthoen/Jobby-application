import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/views/change_password_page.dart';
import 'package:jobby_application/account/views/privacy_and_policy_page.dart';
import 'package:jobby_application/account/views/term_of_service_page.dart';
import 'package:jobby_application/account/widgets/item_card.dart';
import 'package:jobby_application/notification/views/setting_notification_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class AccountSettingPage extends StatefulWidget {
  const AccountSettingPage({super.key});

  static const String routePath = '/account_setting_page';

  @override
  State<AccountSettingPage> createState() => _AccountSettingPageState();
}

class _AccountSettingPageState extends State<AccountSettingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar:const CustomAppBar(title: 'Account Setting'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ItemCard(
              title: 'Notification',
              icon: 'assets/svg/notification.svg',
              onPressed: () {
                context.push(SettingNotificationPage.routePath);
              },
            ),
            ItemCard(
              title: 'Change Password',
              icon: 'assets/svg/lock.svg',
              onPressed: () {
                context.push(ChangePasswordPage.routePath);
              },
            ),
            ItemCard(
              title: 'Terms of Service',
              icon: 'assets/svg/file-check.svg',
              onPressed: () {
                context.push(TermOfServicePage.routePath);
              },
            ),
            ItemCard(
              title: 'Privacy & Policy',
              icon: 'assets/svg/shield.svg',
              onPressed: () {
                context.push(PrivacyAndPolicyPage.routePath);
              },
            ),
          ],
        ),
      ),
    );
  }
}
