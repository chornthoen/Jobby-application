import 'package:flutter/material.dart';
import 'package:jobby_application/notification/widgets/action_notification.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class SettingNotificationEmPage extends StatefulWidget {
  const SettingNotificationEmPage({Key? key}) : super(key: key);

  static const String routePath = '/setting-notification-em-page';

  @override
  State<SettingNotificationEmPage> createState() =>
      _SettingNotificationEmPageState();
}

class _SettingNotificationEmPageState extends State<SettingNotificationEmPage> {
  bool isSwitchNotification = true;
  bool isUpdateNewVersion = true;
  bool isSuitedJob = true;
  bool isJobNotification = true;
  bool isApplicationStatus = true;
  bool isNoticeFromEmployer = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Notification'),
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ActionNotification(
                title: 'Notification',
                description: 'Turn on to receive notification',
                isSwitch: isSwitchNotification,
                onChanged: (value) {
                  setState(() {
                    isSwitchNotification = value;
                  });
                },
              ),
              ActionNotification(
                title: 'Update New Version',
                description: 'Turn on to receive notification',
                isSwitch: isUpdateNewVersion,
                onChanged: (value) {
                  setState(() {
                    isUpdateNewVersion = value;
                  });
                },
              ),
              ActionNotification(
                title: 'Suited Job',
                description: 'Turn on to receive notification',
                isSwitch: isSuitedJob,
                onChanged: (value) {
                  setState(() {
                    isSuitedJob = value;
                  });
                },
              ),
              ActionNotification(
                title: 'Job Notification',
                description: 'Turn on to receive notification',
                isSwitch: isJobNotification,
                onChanged: (value) {
                  setState(() {
                    isJobNotification = value;
                  });
                },
              ),
              ActionNotification(
                title: 'Application Status',
                description: 'Turn on to receive notification',
                isSwitch: isApplicationStatus,
                onChanged: (value) {
                  setState(() {
                    isApplicationStatus = value;
                  });
                },
              ),
              ActionNotification(
                title: 'Notice From Employer',
                description: 'Turn on to receive notification',
                isSwitch: isNoticeFromEmployer,
                onChanged: (value) {
                  setState(() {
                    isNoticeFromEmployer = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
