import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/account/models/list_string.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';

class CareerGoalPage extends StatefulWidget {
  const CareerGoalPage({super.key});

  static const String routePath = '/career_goal_page';

  @override
  State<CareerGoalPage> createState() => _CareerGoalPageState();
}

class _CareerGoalPageState extends State<CareerGoalPage> {
  late TextEditingController careerGoalController;

  @override
  void initState() {
    super.initState();
    careerGoalController = TextEditingController(
      text: goals.isNotEmpty ? goals[0] : '',
    );
  }

  @override
  void dispose() {
    careerGoalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.close(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(title: 'Career Goal'),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Provide your career goals or personal bio',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kColorGray600,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              TextFormField(
                controller: careerGoalController,
                maxLines: 5,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kBlackColor,
                    ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSpacing.sm),
                    borderSide: const BorderSide(
                      color: AppColors.kColorGray500,
                    ),
                  ),
                  hintText: 'Write your career goals or personal bio',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kColorGray600,
                  ),
                ),
              ),
              const Spacer(),
              CustomElevatedButton(
                text: 'Save',
                onPressed: () {
                  setState(() {
                    goals.insert(0, careerGoalController.text);
                    context.pop(context);
                  });
                },
                isClick: true,
              ),
              const SizedBox(height: AppSpacing.xlg),
            ],
          ),
        ),
      ),
    );
  }
}
