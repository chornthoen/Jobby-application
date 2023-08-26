import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/employer/main/views/main_em.dart';
import 'package:jobby_application/forget_password/views/forget_password_page.dart';
import 'package:jobby_application/main/views/main_view.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
import 'package:jobby_application/shared/widgets/custom_text_button.dart';
import 'package:jobby_application/shared/widgets/item_social.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';
import 'package:jobby_application/shared/widgets/text_and_button.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';
import 'package:jobby_application/shared/widgets/widget_or.dart';
import 'package:jobby_application/sign_up_select/views/choose_role_sign_up.dart';

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

  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
  }

  //all controller isNotEmpty
  bool get isAllControllerNotEmpty =>
      emailController.text.isNotEmpty &&
      passwordController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: closeKeyboard,
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(logo: 'Jobby.'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: SingleChildScrollView(
            child: Form(
              key: _loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    textTop: "Let's",
                    textBottom: 'Sign you in!',
                    color: AppColors.kOrange400Color,
                  ),
                  const SizedBox(height: 40),
                  const LabelText(text: 'Phone number/email'),
                   TextFieldForms(
                     keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hintText: 'Enter your phone number/email',
                  ),
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 20),
                  ButtonAction(
                    isClick: true,
                    onPressed: () {
                      if (emailController.text.isEmpty) {
                        SnackBarTop.topSnackBar(
                            context, 'Please enter your phone number/email',);
                      } else if (passwordController.text.isEmpty ) {
                        SnackBarTop.topSnackBar(
                            context, 'Please enter your password',);
                      }
                      context.push(MainView.routePath);
                    },
                    text: 'Sign In',
                  ),
                  const SizedBox(height: 20),
                  const WidgetOr(text: 'OR SIGNIN WITH'),
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
                  const SizedBox(height: 40),
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
          margin: const EdgeInsets.only(bottom: 10),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButton(
                text: 'Continue as a guest',
                onPressed: () {
                  context.push(MainEmployerPage.routePath);
                  //context.push(MainView.routePath);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
