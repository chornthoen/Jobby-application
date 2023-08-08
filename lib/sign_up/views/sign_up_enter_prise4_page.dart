import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/main/views/main_view.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class SignUpEnterPrise4Page extends StatefulWidget {
  const SignUpEnterPrise4Page({Key? key}) : super(key: key);

  static const String routePath = '/sign-up-enter-prise4-page';

  @override
  State<SignUpEnterPrise4Page> createState() => _SignUpEnterPrise4PageState();
}

class _SignUpEnterPrise4PageState extends State<SignUpEnterPrise4Page> {
  late final GlobalKey<FormState> _globalKey;
  late TextEditingController phoneController;

  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  //init state
  @override
  void initState() {
    super.initState();
    _globalKey = GlobalKey<FormState>();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  //dispose
  @override
  void dispose() {
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
  }
  bool obscureText = true;
  bool obscureTextConfirm = true;

  //all controller isNotEmpty
  bool get isAllControllerNotEmpty =>
      phoneController.text.isNotEmpty &&
      emailController.text.isNotEmpty &&
      passwordController.text.isNotEmpty &&
      confirmPasswordController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: closeKeyboard,
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(subTitle: 'Enterprise (4/4)'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Account information',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kBlackColor,
                  ),
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Phone Number'),
                TextFieldForms(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  hintText: 'Enter company name',
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Email'),
                TextFieldForms(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter email',
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
                  hintText: 'Enter confirm password',
                  suffixIcon:
                  obscureTextConfirm ?PhosphorIcons.eye_slash:PhosphorIcons.eye,
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
            text: 'Done',
            onPressed: () {
              context.push(MainView.routePath);
            },
          ),
        ),
      ),
    );
  }
}
