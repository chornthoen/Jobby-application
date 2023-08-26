import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class ChangePasswordEmPage extends StatefulWidget {
  const ChangePasswordEmPage({super.key});

  static const String routePath = '/change-password-em-page';

  @override
  State<ChangePasswordEmPage> createState() => _ChangePasswordEmPageState();
}

class _ChangePasswordEmPageState extends State<ChangePasswordEmPage> {

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
            isClick: true,
            text: 'Save',
            onPressed: () {
              context.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
