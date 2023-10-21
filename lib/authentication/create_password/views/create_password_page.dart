import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/signin/views/sign_in_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({super.key});

  static const routePath = '/create_password_page';

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  late final GlobalKey<FormState> _globalKey;
  late TextEditingController newPasswordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _globalKey = GlobalKey<FormState>();
    newPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  bool obscureText = true;
  bool obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.closeKeyboard(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(logo: 'Jobby.'),
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
                    textTop: "Let's",
                    textBottom: 'Sign you in!',
                    color: AppColors.kGreen400Color,
                  ),
                  const SizedBox(height: AppSpacing.xxxlg),
                  const LabelText(text: 'New Password'),
                  CustomTextFieldForms(
                    keyboardType: TextInputType.visiblePassword,
                    controller: newPasswordController,
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
                  const SizedBox(height: AppSpacing.lg * 1.3),
                  const LabelText(text: 'Confirm Password'),
                  CustomTextFieldForms(
                    keyboardType: TextInputType.visiblePassword,
                    controller: confirmPasswordController,
                    obscureText: obscureText2,
                    hintText: 'Enter your password',
                    suffixIcon: obscureText2
                        ? PhosphorIcons.eye_slash
                        : PhosphorIcons.eye,
                    onPressed: () {
                      setState(() {
                        obscureText2 = !obscureText2;
                      });
                    },
                  ),
                  const SizedBox(height: AppSpacing.xxxlg * 1.3),
                  CustomElevatedButton(
                    isClick: true,
                    onPressed: () {
                      context.go(SignInPage.routePath);
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
