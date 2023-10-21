import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/main/views/main_view.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/customPicCodeTextField.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
import 'package:jobby_application/shared/widgets/custom_text_button.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';

class OTPSignUpJonSeekerPage extends StatefulWidget {
  const OTPSignUpJonSeekerPage({super.key});

  static const routePath = '/verify_otp_sign_up_page';

  @override
  State<OTPSignUpJonSeekerPage> createState() => _OTPSignUpJonSeekerPageState();
}

class _OTPSignUpJonSeekerPageState extends State<OTPSignUpJonSeekerPage> {
  late final GlobalKey<FormState> _globalKey;
  late TextEditingController otpController;

  @override
  void initState() {
    super.initState();
    _globalKey = GlobalKey<FormState>();
    otpController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.closeKeyboard(context),
      child: Scaffold(
        appBar: const CustomAppBar(logo: 'Jobby.'),
        backgroundColor: AppColors.kBackgroundColor,
        body: SingleChildScrollView(
          child: Padding(
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
                    textTop: 'Enter',
                    textBottom: 'verification code',
                    color: AppColors.kBlue400Color,
                  ),
                  const SizedBox(height: AppSpacing.xlg),
                  const Text(
                    'The verification code has been sent to phone number '
                    '0886697678. Please enter the code to continue.',
                    style: TextStyle(
                      color: AppColors.kTertiaryColor,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg * 2),
                  const LabelText(text: 'Verification code'),
                  const SizedBox(height: AppSpacing.sm),
                  CustomPinCodeTextField(
                    controller: otpController,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  Center(
                    child: CustomTextButton(
                      text: 'Resend code (00:30)',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xxxlg),
                  CustomElevatedButton(
                    isClick: true,
                    onPressed: onDone,
                    text: 'Done',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onDone() {
    if (otpController.text.isEmpty) {
      SnackBarTop.topSnackBar(context, 'Please enter OTP');
    } else if (otpController.text.length < 6) {
      SnackBarTop.topSnackBar(
        context,
        'Please enter OTP 6 digits',
      );
    } else {
      context.go(MainView.routePath);
    }
  }
}
