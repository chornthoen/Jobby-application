import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/signin/views/sign_in_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/utils/CustomSocials.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
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
      emailController.text.isNotEmpty && passwordController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.closeKeyboard(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(logo: 'Jobby.'),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    textTop: 'Create',
                    textBottom: 'New Account',
                    color: AppColors.kPurpleColor400,
                  ),
                  const SizedBox(height: AppSpacing.lg * 2),
                  const LabelText(text: 'Full Name'),
                  CustomTextFieldForms(
                    keyboardType: TextInputType.name,
                    controller: emailController,
                    hintText: 'Enter your full name',
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  const LabelText(text: 'Phone Number'),
                  CustomTextFieldForms(
                    keyboardType: TextInputType.phone,
                    controller: passwordController,
                    obscureText: obscureText,
                    hintText: 'Enter your phone number',
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  const LabelText(text: 'Email'),
                  CustomTextFieldForms(
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordController,
                    obscureText: obscureText,
                    hintText: 'Enter your email',
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  const LabelText(text: 'Password'),
                  CustomTextFieldForms(
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
                  const SizedBox(height: AppSpacing.xlg),
                  CustomElevatedButton(
                    isClick: isAllControllerNotEmpty,
                    onPressed: onSignUp,
                    text: 'Sign Up',
                  ),
                  const SizedBox(height: AppSpacing.xlg),
                  const WidgetOr(text: 'OR SIGNUP WITH'),
                  const SizedBox(height: AppSpacing.xlg),
                  CustomSocials(
                    onFacebook: () {},
                    onGoogle: () {},
                    onApple: () {},
                  ),
                  const SizedBox(height: AppSpacing.xlg),
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

  void onSignUp() {
    if (emailController.text.isEmpty) {
      SnackBarTop.topSnackBar(context, 'Please enter your phone number/email');
    } else if (passwordController.text.isEmpty) {
      SnackBarTop.topSnackBar(context, 'Please enter your password');
    } else {
      context.go(SignInPage.routePath);
    }
  }
}
