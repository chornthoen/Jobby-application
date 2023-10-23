import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/sign_up/views/sign_up_enter_prise2_page.dart';
import 'package:jobby_application/authentication/sign_up/views/sign_up_individual_page.dart';
import 'package:jobby_application/authentication/signin/views/sign_in_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';
import 'package:jobby_application/shared/widgets/text_and_button.dart';

class SignUpChoosePositionPage extends StatefulWidget {
  const SignUpChoosePositionPage({super.key});

  static const String routePath = '/sign-up-select-position-page';

  @override
  State<SignUpChoosePositionPage> createState() =>
      _SignUpChoosePositionPageState();
}

class _SignUpChoosePositionPageState extends State<SignUpChoosePositionPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: CustomAppBar(
        subTitle: index == 1
            ? 'Individual (1/2)'
            : index == 2
                ? 'Enterprise (1/4)'
                : '',
      ),
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
            const LabelText(text: 'Choose your position'),
            itemRole(
              1,
              'Individual',
              PhosphorIcons.user_gear,
              index == 1 ? true : false,
            ),
            const SizedBox(height: AppSpacing.xlg),
            itemRole(
              2,
              'Enterprise',
              PhosphorIcons.buildings,
              index == 2 ? true : false,
            ),
            const SizedBox(height: AppSpacing.lg * 2),
            CustomElevatedButton(
              isClick: index == 1 || index == 2 ? true : false,
              onPressed: () {
                if ((index == 1 || index == 2) != true) {
                  SnackBarTop.topSnackBar(context, 'Please select your role');
                } else if (index == 1) {
                  context.push(SignUpIndividualPage.routePath);
                } else if (index == 2) {
                  context.push(SignUpEnterPrise2Page.routePath);
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
                style: CustomTextStyles.bodyLargeSemiBoldBlack,
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
