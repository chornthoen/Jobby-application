import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/label_text.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';
import 'package:jobby_application/sign_up/views/sign_up_enter_prise3_page.dart';

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

  //init state
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

  //dispose
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
        appBar: const CustomAppBar(subTitle: 'Enterprise (2/4)'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Company information',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kBlackColor,
                  ),
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Company Name'),
                TextFieldForms(
                  controller: companyNameController,
                  keyboardType: TextInputType.name,
                  hintText: 'Enter company name',
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Tax Code'),
                TextFieldForms(
                  controller: taxCodeController,
                  keyboardType: TextInputType.number,
                  hintText: 'Enter tax code',
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Website'),
                TextFieldForms(
                  controller: websiteController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter website',
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Phone Number'),
                TextFieldForms(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  hintText: 'Enter phone number',
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Email'),
                TextFieldForms(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter email',
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Address'),
                TextFieldForms(
                  controller: addressController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter address',
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Industry'),
                TextFieldForms(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Choose industry',
                  suffixIcon: PhosphorIcons.caret_down_bold,
                  onPressed: () {
                    setState(() {});
                  },
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Company Size'),
                TextFieldForms(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Choose company size',
                  suffixIcon: PhosphorIcons.caret_down_bold,
                  onPressed: () {
                    setState(() {});
                  },
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Description'),
                TextFieldForms(
                  controller: descriptionController,
                  maxLines: 3,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter description (optional)',
                ),
                const SizedBox(height: 20),
                const LabelText(text: 'Business license'),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.kGray100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.kGray200),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload_file,
                          color: AppColors.kPrimaryColor,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Upload business license',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ButtonAction(
                  isClick: true,
                  text: 'Continue',
                  onPressed: () {
                    context.push(SignUpEnterPrise3Page.routePath);
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
