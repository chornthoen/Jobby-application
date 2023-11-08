import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/jobs/models/industry_model.dart';
import 'package:jobby_application/candidate/jobs/widgets/action_tab.dart';
import 'package:jobby_application/candidate/jobs/widgets/item_industry.dart';
import 'package:jobby_application/employer/profile/widgets/item_people.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';

class CompanyProfilePage extends StatefulWidget {
  const CompanyProfilePage({super.key});

  static const String routePath = '/company-profile-page';

  @override
  State<CompanyProfilePage> createState() => _CompanyProfilePageState();
}

class _CompanyProfilePageState extends State<CompanyProfilePage> {
  late final GlobalKey<FormState> globalKey;
  late TextEditingController companyNameController;
  late TextEditingController locationController;
  late TextEditingController websiteController;
  late TextEditingController industryController;
  late TextEditingController peopleController;
  late TextEditingController companyController;

  @override
  void initState() {
    super.initState();
    globalKey = GlobalKey<FormState>();
    companyNameController = TextEditingController();
    locationController = TextEditingController();
    websiteController = TextEditingController();
    industryController = TextEditingController();
    peopleController = TextEditingController();
    companyController = TextEditingController();
  }

  @override
  void dispose() {
    companyNameController.dispose();
    locationController.dispose();
    websiteController.dispose();
    industryController.dispose();
    peopleController.dispose();
    companyController.dispose();
    super.dispose();
  }

  String gender = '';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => CloseKeyboard.close(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(title: 'Contact Info'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.sm,
            ),
            child: Column(
              children: [
                const TextCustom(text: 'Company Name'),
                const SizedBox(height: AppSpacing.sm),
                CustomTextFieldForms(
                  hintText: 'Company name',
                  controller: companyNameController,
                ),
                const SizedBox(height: AppSpacing.md),
                const TextCustom(text: 'Location'),
                const SizedBox(height: AppSpacing.sm),
                CustomTextFieldForms(
                  hintText: 'Location',
                  controller: locationController,
                ),
                const SizedBox(height: AppSpacing.md),
                const TextCustom(text: 'Website'),
                const SizedBox(height: AppSpacing.sm),
                CustomTextFieldForms(
                  hintText: 'Website',
                  controller: websiteController,
                ),
                const SizedBox(height: AppSpacing.md),
                const TextCustom(text: 'Industry'),
                const SizedBox(height: AppSpacing.sm),
                CustomTextFieldForms(
                  hintText: 'Industry',
                  controller: industryController,
                  suffixIcon: PhosphorIcons.caret_down,
                  onPressed: industrySheet,
                ),
                const SizedBox(height: AppSpacing.md),
                const TextCustom(text: 'People'),
                const SizedBox(height: AppSpacing.sm),
                CustomTextFieldForms(
                  hintText: 'People',
                  controller: peopleController,
                  suffixIcon: PhosphorIcons.caret_down,
                  onPressed: peopleSheet,
                ),
                const SizedBox(height: AppSpacing.md),
                const TextCustom(text: 'Company'),
                const SizedBox(height: AppSpacing.sm),
                CustomTextFieldForms(
                  maxLines: 5,
                  hintText: 'Company',
                  controller: companyController,
                ),
                const SizedBox(height: AppSpacing.md),
                const TextCustom(text: 'Gallery'),
                const SizedBox(height: AppSpacing.sm),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height * 0.12,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSpacing.sm),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/events4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: height * 0.12,
                        width: width * 0.4,
                        child: DottedBorder(
                          dashPattern: const [8, 4],
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(AppSpacing.sm),
                          child: const Center(
                            child: Icon(
                              PhosphorIcons.cloud_arrow_up,
                              color: AppColors.kColorGray600,
                              size: AppSpacing.xxlg,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(
            left: AppSpacing.lg,
            right: AppSpacing.lg,
            bottom: AppSpacing.lg,
          ),
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

  void industrySheet() {
    ShowBottomSheetCustom.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? industry = '';
        for (var i = 0; i < industryModel.length; i++) {
          if (industryModel[i].isClick!) {
            industry = '${industry!}${industryModel[i].position!}, ';
          }
        }
        industryController.text = industry!;
      },
      child: const Column(
        children: [
          ActionTop(title: 'Industry'),
          SizedBox(height: AppSpacing.sm),
          Expanded(child: ItemIndustry()),
          SizedBox(height: AppSpacing.xxlg * 2),
        ],
      ),
    );
  }

  void peopleSheet() {
    ShowBottomSheetCustom.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? industry = '';
        for (var i = 0; i < peopleModel.length; i++) {
          if (peopleModel[i].isClick!) {
            industry = '${industry!}${peopleModel[i].position!}, ';
          }
        }
        peopleController.text = industry!;
      },
      child: const Column(
        children: [
          ActionTop(title: 'Industry'),
          SizedBox(height: AppSpacing.sm),
          Expanded(child: ItemPeople()),
          SizedBox(height: AppSpacing.xxlg * 2),
        ],
      ),
    );
  }
}
