import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';

class ChangeAccountPage extends StatefulWidget {
  const ChangeAccountPage({super.key});

  static const String routePath = '/change-account-page';

  @override
  State<ChangeAccountPage> createState() => _ChangeAccountPageState();
}

class _ChangeAccountPageState extends State<ChangeAccountPage> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Change Account'),
      backgroundColor: AppColors.kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        child: Column(
          children: [
            actionAccount(
              1,
              'Chorn Thoen',
              'Mobile Developer',
              'assets/images/thoen.png',
              index == 1 ? true : false,
            ),
            actionAccount(
              2,
              'Rose',
              'UI Designer',
              'assets/images/rose.png',
              index == 2 ? true : false,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          bottom: AppSpacing.lg,
          left: AppSpacing.lg,
          right: AppSpacing.lg,
        ),
        child: CustomElevatedButton(
          isClick: true,
          text: 'Change Account',
          onPressed: () {
            context.pop();
          },
        ),
      ),
    );
  }

  Widget actionAccount(
    int id,
    String title,
    String subtitle,
    String image,
    bool isActive,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          index = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        margin: const EdgeInsets.only(bottom: AppSpacing.sm),
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(AppSpacing.sm),
          boxShadow: [
            AppColors.kBoxShadowColor,
            AppColors.kBoxShadowColor1,
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: AppSpacing.xxlg,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(width: AppSpacing.sm),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: AppColors.kColorGray600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Icon(
              PhosphorIcons.check_bold,
              color: isActive ? AppColors.kPrimaryColor : Colors.transparent,
              size: AppSpacing.xlg,
            ),
          ],
        ),
      ),
    );
  }
}
