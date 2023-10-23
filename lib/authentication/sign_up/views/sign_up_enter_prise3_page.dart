import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/sign_up/views/sign_up_enter_prise4_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';

class SignUpEnterPrise3Page extends StatefulWidget {
  const SignUpEnterPrise3Page({super.key});

  static const String routePath = '/sign-up-enter-prise3-page';

  @override
  State<SignUpEnterPrise3Page> createState() => _SignUpEnterPrise3PageState();
}

class _SignUpEnterPrise3PageState extends State<SignUpEnterPrise3Page> {
  late TextEditingController companyNameController;
  late TextEditingController phoneNumberController;
  late TextEditingController emailController;
  late TextEditingController positionController;

  @override
  void initState() {
    super.initState();
    companyNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();
    positionController = TextEditingController();
  }

  @override
  void dispose() {
    companyNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    positionController.dispose();
    super.dispose();
  }

  bool get isAllControllerNotEmpty =>
      companyNameController.text.isNotEmpty &&
      phoneNumberController.text.isNotEmpty &&
      emailController.text.isNotEmpty &&
      positionController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.closeKeyboard(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(subTitle: 'Enterprise (3/4)'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Contact information',
                  style: CustomTextStyles.headlineMediumSemiBold,
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Full Name'),
                CustomTextFieldForms(
                  controller: companyNameController,
                  keyboardType: TextInputType.name,
                  hintText: 'Enter company name',
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Phone Number'),
                CustomTextFieldForms(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  hintText: 'Enter phone number',
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Email'),
                CustomTextFieldForms(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter email',
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Position'),
                CustomTextFieldForms(
                  onChange: (value) {
                    setState(() {});
                    return null;
                  },
                  controller: positionController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter position',
                ),
                const SizedBox(height: AppSpacing.xxxlg),
                CustomElevatedButton(
                  isClick: isAllControllerNotEmpty,
                  text: 'Continue',
                  onPressed: () {
                    context.push(SignUpEnterPrise4Page.routePath);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
