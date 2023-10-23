import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/verify_otp_code/views/otp_forget_password_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  static const routePath = '/forget_password_page';

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  late final GlobalKey<FormState> _globalKey;
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    _globalKey = GlobalKey<FormState>();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.closeKeyboard(context),
      child: Scaffold(
        appBar: const CustomAppBar(logo: 'Jobby.'),
        backgroundColor: AppColors.kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm,
          ),
          child: Form(
            key: _globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  textTop: 'Reset',
                  textBottom: 'your Password',
                  color: AppColors.kColorBlue400,
                ),
                const SizedBox(height: AppSpacing.xlg),
                 Text(
                  'Enter the phone number or email associated with your account'
                  ' and we’ll send you OTP to reset your password',
                  style: CustomTextStyles.titleMediumGray700,
                ),
                const SizedBox(height: AppSpacing.lg * 2),
                const LabelText(text: 'Phone number/email'),
                CustomTextFieldForms(
                  onChange: (value) {
                    setState(() {});
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  hintText: 'Enter your phone number/email',
                ),
                const SizedBox(height: AppSpacing.xxxlg * 1.2),
                CustomElevatedButton(
                  isClick: emailController.text.isNotEmpty,
                  onPressed: onGetOTP,
                  text: 'Get OTP',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onGetOTP() {
    if (emailController.text.isEmpty) {
      SnackBarTop.topSnackBar(context, 'Please enter your phone number/email');
      return;
    }
    context.push(VerifyOTPForgetPage.routePath);
  }
}
