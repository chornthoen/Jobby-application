import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/main/views/main_view.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class SignUpIndividualPage extends StatefulWidget {
  const SignUpIndividualPage({Key? key}) : super(key: key);

  static const String routePath = '/sign-up-individual-page';

  @override
  State<SignUpIndividualPage> createState() => _SignUpIndividualPageState();
}

class _SignUpIndividualPageState extends State<SignUpIndividualPage> {
  late final GlobalKey<FormState> _globalKey;
  late TextEditingController phoneNumberController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _globalKey = GlobalKey<FormState>();
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

  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
  }
  //all controller isNotEmpty

  bool get isAllControllerNotEmpty =>
      phoneNumberController.text.isNotEmpty &&
      emailController.text.isNotEmpty &&
      passwordController.text.isNotEmpty &&
      confirmPasswordController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: closeKeyboard,
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(subTitle: 'Individual (2/2)'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const LabelText(text: 'Phone Number'),
                TextFieldForms(
                  keyboardType: TextInputType.number,
                  controller: phoneNumberController,
                  hintText: 'Enter your phone number',
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Email'),
                TextFieldForms(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  hintText: 'Enter your email',
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Password'),
                TextFieldForms(
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
                const SizedBox(height: 20),
                const LabelText(text: 'Confirm Password'),
                TextFieldForms(
                  onChange: (value) {
                    setState(() {});
                  },
                  keyboardType: TextInputType.visiblePassword,
                  controller: confirmPasswordController,
                  obscureText: obscureTextConfirm,
                  hintText: 'Enter your confirm password',
                  suffixIcon:
                  obscureTextConfirm ? PhosphorIcons.eye_slash :PhosphorIcons.eye,
                  onPressed: () {
                    setState(() {
                      obscureTextConfirm = !obscureTextConfirm;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          margin: const EdgeInsets.only(bottom: 20),
          child: ButtonAction(
            isClick: isAllControllerNotEmpty,
            text: 'Sign Up',
            onPressed: () {
              context.push(MainView.routePath);
            },
          ),
        ),
      ),
    );
  }
}
