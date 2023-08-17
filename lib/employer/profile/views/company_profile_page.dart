import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/jobs/models/industry_model.dart';
import 'package:jobby_application/jobs/widgets/action_tab.dart';
import 'package:jobby_application/jobs/widgets/item_industry.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class CompanyProfilePage extends StatefulWidget {
  const CompanyProfilePage({Key? key}) : super(key: key);

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
                const TextCustom(text: 'Company Name'),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Company name',
                  controller: companyNameController,
                ),
                const SizedBox(height: 10),
                const TextCustom(text: 'Location'),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Location',
                  controller: locationController,
                ),
                const SizedBox(height: 10),
                const TextCustom(text: 'Website'),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Website',
                  controller: websiteController,
                ),
                const SizedBox(height: 10),
                const TextCustom(text: 'Industry'),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'Industry',
                  controller: industryController,
                  suffixIcon: PhosphorIcons.caret_down,
                  onPressed: industrySheet,
                ),
                const SizedBox(height: 10),
                const TextCustom(text: 'People'),
                const SizedBox(height: 10),
                TextFieldForms(
                  hintText: 'People',
                  controller: peopleController,
                  suffixIcon: PhosphorIcons.caret_down,
                  onPressed: peopleSheet,
                ),
                const SizedBox(height: 10),
                const TextCustom(text: 'Company'),
                const SizedBox(height: 10),
                TextFieldForms(
                  minLines: 1,
                  maxLines: 5,
                  hintText: 'Company',
                  controller: companyController,
                ),
                const SizedBox(height: 10),
                const TextCustom(text: 'Gallery'),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/events4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: DottedBorder(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          dashPattern: const [8, 4],
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(10),
                          child:const Center(
                            child: Icon(
                              PhosphorIcons.cloud_arrow_up,
                              color: AppColors.kQuaternaryColor,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )

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

  void industrySheet() {
    BottomSheets.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? industry = '';
        for (var i = 0; i < industryModel.length; i++) {
          if (industryModel[i].isClick == true) {
            industry = '${industry!}${industryModel[i].position!}, ';
          }
        }
        industryController.text = industry!;
      },
      child: Column(
        children: const [
          ActionTop(title: 'Industry'),
          SizedBox(height: 10),
          Expanded(child: ItemIndustry()),
          SizedBox(height: 60),
        ],
      ),
    );
  }
  void peopleSheet() {
    BottomSheets.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? industry = '';
        for (var i = 0; i < peopleModel.length; i++) {
          if (peopleModel[i].isClick == true) {
            industry = '${industry!}${peopleModel[i].position!}, ';
          }
        }
        peopleController.text = industry!;
      },
      child: Column(
        children: const [
          ActionTop(title: 'Industry'),
          SizedBox(height: 10),
          Expanded(child: ItemPeople()),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}


