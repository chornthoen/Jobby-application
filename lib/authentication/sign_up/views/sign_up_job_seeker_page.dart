import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/signin/views/sign_in_page.dart';
import 'package:jobby_application/authentication/verify_otp_code/views/otp_sign_up_job_seeker.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
import 'package:jobby_application/shared/widgets/item_social.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';
import 'package:jobby_application/shared/widgets/text_and_button.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';
import 'package:jobby_application/shared/widgets/widget_or.dart';

class SignUpJobSeekerPage extends StatefulWidget {
  const SignUpJobSeekerPage({super.key});

  static const String routePath = '/sign-up-page';

  @override
  State<SignUpJobSeekerPage> createState() => _SignUpJobSeekerPageState();
}

class _SignUpJobSeekerPageState extends State<SignUpJobSeekerPage> {

  late final GlobalKey<FormState> _loginFormKey;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    _loginFormKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool obscureText = true;

  bool get isAllControllerNotEmpty =>
      emailController.text.isNotEmpty &&
      passwordController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.closeKeyboard(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(logo: 'Jobby.'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SingleChildScrollView(
            child: Form(
              key: _loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    textTop: 'Create',
                    textBottom: 'New Account',
                    color: AppColors.kPurple400Color,
                  ),
                  const SizedBox(height: 30),
                  const LabelText(text: 'Full Name'),
                  TextFieldForms(
                    keyboardType: TextInputType.name,
                    controller: emailController,
                    hintText: 'Enter your full name',
                  ),
                  const SizedBox(height: 10),
                  const LabelText(text: 'Phone Number'),
                  TextFieldForms(
                    keyboardType: TextInputType.phone,
                    controller: passwordController,
                    obscureText: obscureText,
                    hintText: 'Enter your phone number',
                  ),
                  const SizedBox(height: 10),
                  const LabelText(text: 'Email'),
                  TextFieldForms(
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordController,
                    obscureText: obscureText,
                    hintText: 'Enter your email',
                  ),
                  const SizedBox(height: 10),
                  const LabelText(text: 'Password'),
                  TextFieldForms(
                    onChange: (value) {
                      setState(() {});
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    obscureText: obscureText,
                    hintText: 'Enter your password',
                    suffixIcon: obscureText
                        ? PhosphorIcons.eye_slash
                        : PhosphorIcons.eye,
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  const SizedBox(height: 24),
                  ButtonAction(
                    isClick: isAllControllerNotEmpty,
                    onPressed: () {
                      if (emailController.text.isEmpty) {
                        SnackBarTop.topSnackBar(
                            context, 'Please enter your phone number/email',);
                      } else if (passwordController.text.isEmpty ) {
                        SnackBarTop.topSnackBar(
                            context, 'Please enter your password',);
                      }
                      context.push(OTPSignUpJonSeekerPage.routePath);
                    },
                    text: 'Sign Up',
                  ),
                  const SizedBox(height: 24),
                  const WidgetOr(text: 'OR SIGNUP WITH'),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemSocials(
                        onPressed: () {},
                        image: 'assets/images/facebook.png',
                      ),
                      ItemSocials(
                        onPressed: () {},
                        image: 'assets/images/google.png',
                      ),
                      ItemSocials(
                        onPressed: () {},
                        image: 'assets/images/apple.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextAndButton(
                    text: 'Don’t have an account?',
                    onPressed: () {
                      context.push(SignInPage.routePath);
                    },
                    textButton: 'Sign In',
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
