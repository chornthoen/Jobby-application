import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/models/list_string.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

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
        appBar: const CustomAppBar(title: 'Career Goal'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Provide your career goals or personal bio',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kQuaternaryColor,
                ),
              ),
              const SizedBox(height: 10),
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
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: AppColors.kQuinaryColor,
                    ),
                  ),
                  hintText: 'Write your career goals or personal bio',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kQuaternaryColor,
                  ),
                ),
              ),
              const Spacer(),
              ButtonAction(
                text: 'Save',
                onPressed: () {
                  setState(() {
                    goals.insert(0, careerGoalController.text);
                    context.pop(context);
                  });
                },
                isClick: true,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
