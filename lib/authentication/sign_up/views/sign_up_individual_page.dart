import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/main/views/main_view.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';

class SignUpIndividualPage extends StatefulWidget {
  const SignUpIndividualPage({super.key});

  static const String routePath = '/sign-up-individual-page';

  @override
  State<SignUpIndividualPage> createState() => _SignUpIndividualPageState();
}

class _SignUpIndividualPageState extends State<SignUpIndividualPage> {
  late TextEditingController phoneNumberController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  bool obscureText = true;
  bool obscureTextConfirm = true;

  bool get isAllControllerNotEmpty =>
      phoneNumberController.text.isNotEmpty &&
      emailController.text.isNotEmpty &&
      passwordController.text.isNotEmpty &&
      confirmPasswordController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.close(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(subTitle: 'Individual (2/2)'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.sm,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSpacing.xlg),
                const LabelText(text: 'Phone Number'),
                CustomTextFieldForms(
                  keyboardType: TextInputType.number,
                  controller: phoneNumberController,
                  hintText: 'Enter your phone number',
                ),
                const SizedBox(height: AppSpacing.xlg),
                const LabelText(text: 'Email'),
                CustomTextFieldForms(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  hintText: 'Enter your email',
                ),
                const SizedBox(height: AppSpacing.xlg),
                const LabelText(text: 'Password'),
                CustomTextFieldForms(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  obscureText: obscureText,
                  hintText: 'Enter your password',
                  suffixIcon:
                      obscureText ? PhosphorIcons.eye_slash : PhosphorIcons.eye,
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                ),
                const SizedBox(height: AppSpacing.xlg),
                const LabelText(text: 'Confirm Password'),
                CustomTextFieldForms(
                  onChange: (value) {
                    setState(() {});
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  controller: confirmPasswordController,
                  obscureText: obscureTextConfirm,
                  hintText: 'Enter your confirm password',
                  suffixIcon: obscureTextConfirm
                      ? PhosphorIcons.eye_slash
                      : PhosphorIcons.eye,
                  onPressed: () {
                    setState(() {
                      obscureTextConfirm = !obscureTextConfirm;
                    });
                  },
                ),
                const SizedBox(height: AppSpacing.xxxlg),
                CustomElevatedButton(
                  isClick: isAllControllerNotEmpty,
                  text: 'Sign Up',
                  onPressed: () {
                    context.go(MainView.routePath);
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
