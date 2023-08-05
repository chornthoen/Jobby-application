import 'package:flutter/material.dart';

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
    return const Scaffold(
      appBar: CustomAppBar(title: 'Account Setting'),
      body: Center(
        child: Text('Account Setting Page'),
      ),
    );
  }
}
