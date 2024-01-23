import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/quizz/models/quiz_model.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';

class SuccessQuizPage extends StatefulWidget {
  const SuccessQuizPage({
    required this.questionModel,
    super.key,
  });

  final List<QuestionModel> questionModel;

  static const String routePath = '/success-quiz';

  @override
  State<SuccessQuizPage> createState() => _SuccessQuizPageState();
}

class _SuccessQuizPageState extends State<SuccessQuizPage> {
  @override
  void initState() {
    currentIndex++;
    super.initState();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/on_boarding_4.png'),
                    width: 220,
                    height: 250,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Congratulations! Get x25',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.kBlackColor,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/svg/diamond-color.svg',
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    const Text(
                      'for completing the quiz',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kColorGray600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.sm),
                const Text(
                  'Your answer',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kBlackColor,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.questionModel.length,
                  itemBuilder: (context, index) {
                    return itemAnswer(
                      title: widget.questionModel[index].question,
                      answer: widget
                          .questionModel[index].answersList[index].answerText,
                      isTrue: widget
                          .questionModel[index].answersList[index].isCorrect,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          left: AppSpacing.lg,
          right: AppSpacing.lg,
          bottom: AppSpacing.lg,
        ),
        child: CustomElevatedButton(
          isClick: true,
          text: 'Go to home',
          onPressed: () {
            context.pop();
          },
        ),
      ),
    );
  }

  Widget itemAnswer({
    required String title,
    required String answer,
    required bool isTrue,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/false.svg',
              width: 22,
              height: 22,
            ),
            const SizedBox(width: 8),
            const Text(
              'Question 1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.kColorGray600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.kPrimaryColor,
          ),
        ),
        const SizedBox(height: 8),
        const SizedBox(height: 5),
        Text(
          answer,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.kColorGray600,
          ),
        ),
        const Divider(),
      ],
    );
  }
}

class ItemSuccess extends StatelessWidget {
  const ItemSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/false.svg',
              width: 22,
              height: 22,
            ),
            const SizedBox(width: 8),
            const Text(
              'Question 1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.kColorGray600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          'When should a developer apply usability priciples?',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.kPrimaryColor,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Early in the SDLC',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.kOrangeColor,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Your answer: Early in the SDLC',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.kColorGray600,
          ),
        ),
        const Divider(),
      ],
    );
  }
}
