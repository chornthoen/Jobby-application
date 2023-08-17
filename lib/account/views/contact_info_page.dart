import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({Key? key}) : super(key: key);

  static const String routePath = '/contact_info_page';

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  late final GlobalKey<FormState> globalKey;
  late TextEditingController fullNameController;
  late TextEditingController titleController;
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;
  late TextEditingController addressController;
  late TextEditingController personalWebsiteController;

  @override
  void initState() {
    super.initState();
    globalKey = GlobalKey<FormState>();
    fullNameController = TextEditingController();
    titleController = TextEditingController();
    emailController = TextEditingController();
    phoneNumberController = TextEditingController();
    addressController = TextEditingController();
    personalWebsiteController = TextEditingController();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    titleController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    addressController.dispose();
    personalWebsiteController.dispose();
    super.dispose();
  }

  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
  }

  String gender = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: closeKeyboard,
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(title: 'Contact Info'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                const TextCustom(text: 'Full Name'),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'full name',
                  controller: fullNameController,
                ),
                const SizedBox(height: 10),
                const TextCustom(
                  text: 'Gender',
                  star: false,
                ),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(
                          fillColor: MaterialStateProperty.all<Color>(
                              AppColors.kPrimaryColor),
                          value: 'Male',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = 'Male';
                            });
                          },
                        ),
                        const Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kBlackColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          fillColor: MaterialStateProperty.all<Color>(
                              AppColors.kPrimaryColor),
                          value: 'Female',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = 'Female';
                            });
                          },
                        ),
                        const Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kBlackColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          fillColor: MaterialStateProperty.all<Color>(
                            AppColors.kPrimaryColor,
                          ),
                          focusColor: AppColors.kPrimaryColor,
                          value: 'Other',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = 'Other';
                            });
                          },
                        ),
                        const Text(
                          'Other',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kBlackColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const TextCustom(text: 'Title'),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Title',
                  controller: titleController,
                ),
                const SizedBox(height: 20),
                const TextCustom(text: 'Email'),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Email',
                  controller: emailController,
                ),
                const SizedBox(height: 20),
                const TextCustom(text: 'Phone number'),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Phone number',
                  controller: phoneNumberController,
                ),
                const SizedBox(height: 20),
                const TextCustom(text: 'Address', star: false),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Address',
                  controller: addressController,
                ),
                const SizedBox(height: 20),
                const TextCustom(text: 'Personal Website', star: false),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Personal Website',
                  controller: personalWebsiteController,
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
          margin: const EdgeInsets.only(bottom: 15),
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

