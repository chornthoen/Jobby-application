import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/jobs/models/Expected_salary_model.dart';
import 'package:jobby_application/jobs/models/add_position_model.dart';
import 'package:jobby_application/jobs/models/industry_model.dart';
import 'package:jobby_application/jobs/models/level_model.dart';
import 'package:jobby_application/jobs/models/location_model.dart';
import 'package:jobby_application/jobs/models/type_fo_work_model.dart';
import 'package:jobby_application/jobs/widgets/action_tab.dart';
import 'package:jobby_application/jobs/widgets/item_add_position.dart';
import 'package:jobby_application/jobs/widgets/item_expected_salary.dart';
import 'package:jobby_application/jobs/widgets/item_icon_and_text.dart';
import 'package:jobby_application/jobs/widgets/item_industry.dart';
import 'package:jobby_application/jobs/widgets/item_level.dart';
import 'package:jobby_application/jobs/widgets/item_location.dart';
import 'package:jobby_application/jobs/widgets/item_type_of_work.dart';
import 'package:jobby_application/jobs/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class WorkCriteriaPage extends StatefulWidget {
  const WorkCriteriaPage({Key? key}) : super(key: key);

  static const String routePath = '/workCriteriaPage';

  @override
  State<WorkCriteriaPage> createState() => _WorkCriteriaPageState();
}

class _WorkCriteriaPageState extends State<WorkCriteriaPage> {
  late TextEditingController addPositionController;
  late TextEditingController typeOfWorkController;
  late TextEditingController locationController;
  late TextEditingController levelController;
  late TextEditingController industryController;
  late TextEditingController expectedSalaryController;

  @override
  void initState() {
    super.initState();
    addPositionController = TextEditingController();
    typeOfWorkController = TextEditingController();
    locationController = TextEditingController();
    levelController = TextEditingController();
    industryController = TextEditingController();
    expectedSalaryController = TextEditingController();
  }

  @override
  void dispose() {
    addPositionController.dispose();
    typeOfWorkController.dispose();
    locationController.dispose();
    levelController.dispose();
    industryController.dispose();
    expectedSalaryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'Your Work Criteria'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LabelIconAndText(
                icon: 'assets/svg/jobs.svg',
                text: 'Job you are looking for',
              ),
              const SizedBox(height: 10),
              const Text(
                'Add up to 10 positions you want to search for',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kQuaternaryColor,
                ),
              ),
              const SizedBox(height: 10),
              TextFieldForms(
                controller: addPositionController,
                hintText: 'Add position',
                maxLines: 3,
                minLines: 1,
                suffixIcon: PhosphorIcons.caret_down,
                onPressed: addPositionSheet,
              ),
              const SizedBox(height: 10),
              const LabelIconAndText(
                icon: 'assets/svg/time.svg',
                text: 'Type of work',
              ),
              const SizedBox(height: 10),
              TextFieldForms(
                controller: typeOfWorkController,
                hintText: 'Choose type of work',
                suffixIcon: PhosphorIcons.caret_down,
                onPressed: typeOfWorkSheet,
              ),
              const SizedBox(height: 10),
              const LabelIconAndText(
                icon: 'assets/svg/location.svg',
                text: 'Location',
              ),
              const SizedBox(height: 10),
              TextFieldForms(
                controller: locationController,
                hintText: 'Choose location',
                suffixIcon: PhosphorIcons.caret_down,
                onPressed: locationSheet,
              ),
              const SizedBox(height: 10),
              const LabelIconAndText(
                icon: 'assets/svg/star-outline.svg',
                text: 'Level',
              ),
              const SizedBox(height: 10),
              TextFieldForms(
                controller: levelController,
                hintText: 'Choose level',
                suffixIcon: PhosphorIcons.caret_down,
                onPressed: levelSheet,
              ),
              const SizedBox(height: 10),
              const LabelIconAndText(
                icon: 'assets/svg/building.svg',
                text: 'Industry',
              ),
              const SizedBox(height: 10),
              TextFieldForms(
                controller: industryController,
                hintText: 'Choose industry',
                suffixIcon: PhosphorIcons.caret_down,
                onPressed: industrySheet,
              ),
              const SizedBox(height: 10),
              const LabelIconAndText(
                icon: 'assets/svg/money.svg',
                text: 'Expected salary',
              ),
              const SizedBox(height: 10),
              TextFieldForms(
                controller: expectedSalaryController,
                hintText: 'Choose expected salary',
                suffixIcon: PhosphorIcons.caret_down,
                onPressed: expectedSalarySheet,
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
        margin: const EdgeInsets.only(bottom: 10),
        child: ButtonAction(
          isClick: true,
          text: 'Save',
          onPressed: () {
            context.pop(context);
          },
        ),
      ),
    );
  }

  void addPositionSheet() {
    BottomSheets.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? addPosition = '';
        for (var i = 0; i < addPositionModel.length; i++) {
          if (addPositionModel[i].isClick == true) {
            addPosition = '${addPosition!}${addPositionModel[i].position!}, ';
          }
        }
        addPositionController.text = addPosition!;
      },
      child: Column(
        children: const [
          ActionTop(title: 'Job Are You Looking For'),
          SizedBox(height: 10),
          Expanded(child: ItemAddPosition()),
          SizedBox(height: 60),
        ],
      ),
    );
  }

  void typeOfWorkSheet() {
    BottomSheets.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? typeOfWork = '';
        for (var i = 0; i < typeOfWorkModel.length; i++) {
          if (typeOfWorkModel[i].isClick == true) {
            typeOfWork = '${typeOfWork!}${typeOfWorkModel[i].position!}, ';
          }
        }
        typeOfWorkController.text = typeOfWork!;
      },
      child: Column(
        children: const [
          ActionTop(title: 'Type of Work'),
          SizedBox(height: 10),
          Expanded(child: ItemTypeOfWork()),
          SizedBox(height: 60),
        ],
      ),
    );
  }

  void locationSheet() {
    BottomSheets.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? location = '';
        for (var i = 0; i < locationModel.length; i++) {
          if (locationModel[i].isClick == true) {
            location = '${location!}${locationModel[i].position!}, ';
          }
        }
        locationController.text = location!;
      },
      child: Column(
        children: const [
          ActionTop(title: 'Location'),
          SizedBox(height: 10),
          Expanded(child: ItemLocation()),
          SizedBox(height: 60),
        ],
      ),
    );
  }

  void levelSheet() {
    BottomSheets.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? level = '';
        for (var i = 0; i < levelModel.length; i++) {
          if (levelModel[i].isClick == true) {
            level = '${level!}${levelModel[i].position!}, ';
          }
        }
        levelController.text = level!;
      },
      child: Column(
        children: const [
          ActionTop(title: 'Level'),
          SizedBox(height: 10),
          Expanded(child: ItemLevel()),
          SizedBox(height: 60),
        ],
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

  void expectedSalarySheet() {
    BottomSheets.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? expectedSalary = '';
        for (var i = 0; i < expectedSalaryModel.length; i++) {
          if (expectedSalaryModel[i].isClick == true) {
            expectedSalary =
                '${expectedSalary!}${expectedSalaryModel[i].position!}, ';
          }
        }
        expectedSalaryController.text = expectedSalary!;
      },
      child: Column(
        children: const [
          ActionTop(title: 'Expected Salary'),
          SizedBox(height: 10),
          Expanded(child: ItemExpectedSalary()),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
