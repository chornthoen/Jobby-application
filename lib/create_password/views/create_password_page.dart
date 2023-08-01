import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_text.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({Key? key}) : super(key: key);

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
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(logo: 'Jobby.'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                  const SizedBox(height: 40),
                  const LabelText(text: 'New Password'),
                  TextFieldForms(
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
                  ),const SizedBox(height: 20),
                  const LabelText(text: 'Confirm Password'),
                  TextFieldForms(
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
                  const SizedBox(height: 50),
                  ButtonAction(
                    isClick: true,
                    onPressed: () {},
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
