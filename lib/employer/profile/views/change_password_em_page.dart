import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';

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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.close(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(title: 'Change Password'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.sm,
            ),
            child: Column(
              children: [
                const TextCustom(text: 'Old Password', star: false),
                const SizedBox(height: AppSpacing.sm),
                CustomTextFieldForms(
                  hintText: 'Old Password',
                  controller: oldPasswordController,
                ),
                const SizedBox(height: AppSpacing.lg),
                const TextCustom(text: 'New Password', star: false),
                const SizedBox(height: AppSpacing.sm),
                CustomTextFieldForms(
                  hintText: 'New Password',
                  controller: newPasswordController,
                ),
                const SizedBox(height: AppSpacing.lg),
                const TextCustom(text: 'Confirm Password', star: false),
                const SizedBox(height: AppSpacing.sm),
                CustomTextFieldForms(
                  hintText: 'Confirm Password',
                  controller: confirmPasswordController,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(
            left: AppSpacing.lg,
            right: AppSpacing.lg,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          margin: const EdgeInsets.only(bottom: AppSpacing.xlg),
          child: CustomElevatedButton(
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
