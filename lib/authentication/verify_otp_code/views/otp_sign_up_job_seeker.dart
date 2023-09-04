import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/main/views/main_view.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
import 'package:jobby_application/shared/widgets/custom_text_button.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: closeKeyboard,
      child: Scaffold(
        appBar: const CustomAppBar(logo: 'Jobby.'),
        backgroundColor: AppColors.kBackgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                  const SizedBox(height: 20),
                  const Text(
                    'The verification code has been sent to phone number '
                        '0886697678. Please enter the code to continue.',
                    style: TextStyle(
                      color: AppColors.kTertiaryColor,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 35),
                  const LabelText(text: 'Verification code'),
                  const SizedBox(height: 10),
                  PinCodeTextField(
                    controller: otpController,
                    appContext: context,
                    length: 6,
                    animationType: AnimationType.fade,
                    textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kPrimaryColor,
                    ),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(6),
                      fieldHeight: 52,
                      fieldWidth: 52,
                      borderWidth: 1,
                      activeBorderWidth: 1,
                      inactiveBorderWidth: 1,
                      selectedBorderWidth: 1,
                      activeFillColor: AppColors.kWhiteColor,
                      inactiveFillColor: AppColors.kWhiteColor,
                      activeColor: AppColors.kSecondaryColor,
                      inactiveColor: AppColors.kSeptenaryColor,
                      selectedColor: AppColors.kSeptenaryColor,
                      selectedFillColor: AppColors.kWhiteColor,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {},
                    beforeTextPaste: (text) {
                      return true;
                    },
                  ),
                  Center(
                    child: CustomTextButton(
                      text: 'Resend code (00:30)',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 50),
                  ButtonAction(
                    isClick: true,
                    onPressed: () {
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
                    },
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
}
