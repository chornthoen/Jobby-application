import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/views/contact_info_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  static const String routePath = '/change-password';

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {

  late TextEditingController oldPasswordController;
  late TextEditingController newPasswordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    oldPasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
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
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(title: 'Change Password'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                const TextCustom(text: 'Old Password',star: false),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Old Password',
                  controller: oldPasswordController,
                ),
                const SizedBox(height: 20),
                const TextCustom(text: 'New Password',star: false),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'New Password',
                  controller: newPasswordController,
                ),
                const SizedBox(height: 20),
                const TextCustom(text: 'Confirm Password',star: false),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Confirm Password',
                  controller: confirmPasswordController,
                ),
                const SizedBox(height: 40),
                ButtonAction(
                  isClick: true,
                  text: 'Save',
                  onPressed: () {
                    context.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
