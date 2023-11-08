import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/forget_password/views/forget_password_page.dart';
import 'package:jobby_application/authentication/sign_up_select/views/choose_role_sign_up.dart';
import 'package:jobby_application/candidate/main/views/main_view.dart';
import 'package:jobby_application/employer/main/views/main_em.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/utils/CustomSocials.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
import 'package:jobby_application/shared/widgets/custom_text_button.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';
import 'package:jobby_application/shared/widgets/text_and_button.dart';
import 'package:jobby_application/shared/widgets/widget_or.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  static const String routePath = '/sign-in';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
      onTap: () => CloseKeyboard.close(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(logo: 'Jobby.'),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.md,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    textTop: "Let's",
                    textBottom: 'Sign you in!',
                    color: AppColors.kOrangeColor400,
                  ),
                  const SizedBox(height: AppSpacing.xxxlg),
                  const LabelText(text: 'Phone number/email'),
                  CustomTextFieldForms(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hintText: 'Enter your phone number/email',
                  ),
                  const SizedBox(height: AppSpacing.lg * 1.3),
                  const LabelText(text: 'Password'),
                  CustomTextFieldForms(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(
                        text: 'Forgot password?',
                        onPressed: () {
                          context.push(ForgetPasswordPage.routePath);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xlg),
                  CustomElevatedButton(
                    isClick: true,
                    onPressed: onSignIn,
                    text: 'Sign In',
                  ),
                  const SizedBox(height: AppSpacing.xlg),
                  const WidgetOr(text: 'OR SIGNIN WITH'),
                  const SizedBox(height: AppSpacing.xlg),
                  CustomSocials(
                    onFacebook: () {},
                    onGoogle: () {
                      context.push(MainEmployerPage.routePath);
                    },
                    onApple: () {},
                  ),
                  const SizedBox(height: AppSpacing.lg * 2),
                  TextAndButton(
                    text: 'Don’t have an account?',
                    onPressed: () {
                      context.push(SignUpSelectPage.routePath);
                    },
                    textButton: 'Sign Up',
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: AppSpacing.sm),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButton(
                text: 'Continue as a guest',
                onPressed: () {
                  context.push(MainView.routePath);
                  //context.push(MainView.routePath);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSignIn() {
    if (emailController.text.isEmpty) {
      SnackBarTop.topSnackBar(context, 'Please enter your phone number/email');
    } else if (passwordController.text.isEmpty) {
      SnackBarTop.topSnackBar(context, 'Please enter your password');
    } else {
      context.push(MainView.routePath);
    }
  }
}
