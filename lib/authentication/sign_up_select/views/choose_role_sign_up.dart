import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/sign_up/views/sign_up_job_seeker_page.dart';
import 'package:jobby_application/authentication/sign_up_select/views/choose_positions_page.dart';
import 'package:jobby_application/authentication/signin/views/sign_in_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';
import 'package:jobby_application/shared/widgets/text_and_button.dart';

class SignUpSelectPage extends StatefulWidget {
  const SignUpSelectPage({super.key});

  static const String routePath = '/sign-up-select-page';

  @override
  State<SignUpSelectPage> createState() => _SignUpSelectPageState();
}

class _SignUpSelectPageState extends State<SignUpSelectPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              textTop: 'Create',
              textBottom: 'New Account',
              color: AppColors.kPurpleColor400,
            ),
            const SizedBox(height: AppSpacing.xxxlg),
            const LabelText(text: 'You are'),
            itemRole(
              1,
              'Job Seeker',
              PhosphorIcons.user_bold,
              index == 1 ? true : false,
            ),
            const SizedBox(height: AppSpacing.xlg),
            itemRole(
              2,
              'Head Hunter',
              PhosphorIcons.crosshair_simple_bold,
              index == 2 ? true : false,
            ),
            const SizedBox(height: AppSpacing.lg * 2),
            CustomElevatedButton(
              isClick: index == 1 || index == 2 ? true : false,
              onPressed: () {
                if ((index == 1 || index == 2) != true) {
                  SnackBarTop.topSnackBar(context, 'Please select your role');
                } else if (index == 1) {
                  context.push(SignUpJobSeekerPage.routePath);
                } else if (index == 2) {
                  context.push(SignUpChoosePositionPage.routePath);
                }
              },
              text: 'Continue',
            ),
            const Spacer(),
            TextAndButton(
              text: 'Already have an account?',
              onPressed: () {
                context.push(SignInPage.routePath);
              },
              textButton: 'Sign In',
            ),
            const SizedBox(height: AppSpacing.lg * 2),
          ],
        ),
      ),
    );
  }

  Widget itemRole(int id, String title, IconData icon, bool selected) {
    return Material(
      child: GestureDetector(
        onTap: () {
          setState(() {
            index = id;
          });
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.md,
          ),
          decoration: BoxDecoration(
            color: selected ? AppColors.kOrangeColor200 : AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(AppSpacing.sm),
            border: Border.all(color: AppColors.kColorGray200),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColors.kPrimaryColor,
                size: AppSpacing.xlg,
              ),
              const SizedBox(width: AppSpacing.sm),
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                PhosphorIcons.check_bold,
                color: selected ? AppColors.kPrimaryColor : Colors.transparent,
                size: AppSpacing.xlg,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
