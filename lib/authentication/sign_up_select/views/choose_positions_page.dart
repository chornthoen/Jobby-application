import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/sign_up/views/sign_up_enter_prise2_page.dart';
import 'package:jobby_application/authentication/sign_up/views/sign_up_individual_page.dart';
import 'package:jobby_application/authentication/signin/views/sign_in_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
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
      appBar:  CustomAppBar(
        subTitle: index == 1 ? 'Individual (1/2)' : index == 2 ?
        'Enterprise (1/4)' : '',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              textTop: 'Create',
              textBottom: 'New Account',
              color: AppColors.kPurple400Color,
            ),
            const SizedBox(height: 40),
            const LabelText(text: 'Choose your position'),
            itemRole(
              1,
              'Individual',
              PhosphorIcons.user_gear,
              index == 1 ? true : false,

            ),
            const SizedBox(height: 20),
            itemRole(
              2,
              'Enterprise',
              PhosphorIcons.buildings,
              index == 2 ? true : false,
            ),
            const SizedBox(height: 30),
            ButtonAction(
              isClick: index == 1 || index == 2 ? true : false,
              onPressed: () {
                if ((index ==1 || index == 2) != true){
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
            const SizedBox(height: 30),
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
          height: 55,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: selected ? AppColors.kOrange200Color : AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.kGray200),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColors.kPrimaryColor,
                size: 26,
              ),
              const SizedBox(width: 10),
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
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
