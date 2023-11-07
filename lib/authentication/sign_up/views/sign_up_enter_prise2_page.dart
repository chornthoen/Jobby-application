import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/sign_up/views/sign_up_enter_prise3_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';

class SignUpEnterPrise2Page extends StatefulWidget {
  const SignUpEnterPrise2Page({super.key});

  static const String routePath = '/sign-up-enter-prise-page';

  @override
  State<SignUpEnterPrise2Page> createState() => _SignUpEnterPrise2PageState();
}

class _SignUpEnterPrise2PageState extends State<SignUpEnterPrise2Page> {
  late TextEditingController companyNameController;
  late TextEditingController taxCodeController;
  late TextEditingController websiteController;
  late TextEditingController phoneNumberController;
  late TextEditingController emailController;
  late TextEditingController addressController;
  late TextEditingController descriptionController;
  late TextEditingController businessLicenseController;
  late TextEditingController industryController;
  late TextEditingController companySizeController;

  @override
  void initState() {
    super.initState();
    companyNameController = TextEditingController();
    taxCodeController = TextEditingController();
    websiteController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();
    addressController = TextEditingController();
    descriptionController = TextEditingController();
    businessLicenseController = TextEditingController();
    industryController = TextEditingController();
    companySizeController = TextEditingController();
  }

  @override
  void dispose() {
    companyNameController.dispose();
    taxCodeController.dispose();
    websiteController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    addressController.dispose();
    descriptionController.dispose();
    businessLicenseController.dispose();
    industryController.dispose();
    companySizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.close(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(subTitle: 'Enterprise (2/4)'),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Company information',
                  style:  CustomTextStyles.headlineMediumSemiBold,
                ),
                const SizedBox(height: AppSpacing.xlg),
                const LabelText(text: 'Company Name'),
                CustomTextFieldForms(
                  controller: companyNameController,
                  keyboardType: TextInputType.name,
                  hintText: 'Enter company name',
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Tax Code'),
                CustomTextFieldForms(
                  controller: taxCodeController,
                  keyboardType: TextInputType.number,
                  hintText: 'Enter tax code',
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Website'),
                CustomTextFieldForms(
                  controller: websiteController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter website',
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Phone Number'),
                CustomTextFieldForms(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  hintText: 'Enter phone number',
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Email'),
                CustomTextFieldForms(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter email',
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Address'),
                CustomTextFieldForms(
                  controller: addressController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter address',
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Industry'),
                CustomTextFieldForms(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Choose industry',
                  suffixIcon: PhosphorIcons.caret_down_bold,
                  onPressed: () {
                    setState(() {});
                  },
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Company Size'),
                CustomTextFieldForms(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Choose company size',
                  suffixIcon: PhosphorIcons.caret_down_bold,
                  onPressed: () {
                    setState(() {});
                  },
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Description'),
                CustomTextFieldForms(
                  controller: descriptionController,
                  maxLines: 3,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter description (optional)',
                ),
                const SizedBox(height: AppSpacing.lg * 1.3),
                const LabelText(text: 'Business license'),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                    vertical: AppSpacing.md,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.kColorGray100,
                    borderRadius: BorderRadius.circular(AppSpacing.sm),
                    border: Border.all(color: AppColors.kColorGray200),
                  ),
                  child:  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.upload_file,
                          color: AppColors.kPrimaryColor,
                          size: AppSpacing.xlg,
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        Text(
                          'Upload business license',
                          style: CustomTextStyles.titleMediumRegularBlack,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.xlg),
                CustomElevatedButton(
                  isClick: true,
                  text: 'Continue',
                  onPressed: () {
                    context.push(SignUpEnterPrise3Page.routePath);
                  },
                ),
                const SizedBox(height: AppSpacing.xlg),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
