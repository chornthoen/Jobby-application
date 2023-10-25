import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/quizz/models/quiz_model.dart';
import 'package:jobby_application/candidate/quizz/views/quizz_page.dart';
import 'package:jobby_application/candidate/quizz/widgets/widget_question.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';

class Question1Page extends StatefulWidget {
  const Question1Page({super.key});

  static const String routePath = '/question-1-page';

  @override
  State<Question1Page> createState() => _Question1PageState();
}

class _Question1PageState extends State<Question1Page> {
  int currentQuestion = 0;
  AnswerModel? selectedAnswerModel;
  late QuestionModel questionModel;
  bool isSelectQuestion = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.kBackgroundColor,
        elevation: 0,
        title: const Text(
          'Question 1',
          style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        leadingWidth: AppSpacing.xxlg * 2,
        leading: IconButton(
          splashRadius: AppSpacing.xlg,
          onPressed: () {
            if (currentQuestion > 0) {
              setState(() {
                currentQuestion--;
              });
            } else {
              Navigator.pop(context);
            }
          },
          icon: const Icon(
            PhosphorIcons.x,
            color: AppColors.kPrimaryColor,
            size: AppSpacing.xlg,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/pech.png'),
                  width: 80,
                  height: 50,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/diamond-color.svg',
                      height: 26,
                      width: 26,
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    const Text(
                      '10',
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.lg),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.lg,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Question ${currentQuestion + 1}/${questionsList.length}',
                  style: const TextStyle(
                    color: AppColors.kColorGray600,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showBottomSheetSuccess(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.sm,
                      vertical: AppSpacing.xs,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.kOrangeColor200.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(AppSpacing.sm),
                    ),
                    child: const Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/lightbulb.png'),
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          'Hint',
                          style: TextStyle(
                            color: AppColors.kOrangeColor400,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            RankWidget(
              percent: (currentQuestion + 1).toDouble() /
                  questionsList.length.toDouble(),
            ),
            const SizedBox(height: AppSpacing.lg),
            Question(
              question: questionsList[currentQuestion].question,
            ),
            const SizedBox(height: AppSpacing.lg),
            Expanded(
              child: ListView.builder(
                itemCount: questionsList[currentQuestion].answersList.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final answer =
                      questionsList[currentQuestion].answersList[index];
                  return _answer(answer, index + 1);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: CustomElevatedButton(
          isClick: selectedAnswerModel != null,
          text: currentQuestion < questionsList.length - 1 ? 'Next' : 'Submit',
          onPressed: () {
            if (selectedAnswerModel == null) return;
            if (currentQuestion < questionsList.length - 1) {
              setState(() {
                currentQuestion++;
                selectedAnswerModel = null;
              });
            } else {
              _showBottomSheetSuccess(context);
            }
          },
        ),
      ),
    );
  }

  Widget _answer(AnswerModel answer, int index) {
    final isSelected = answer == selectedAnswerModel;
    return GestureDetector(
      onTap: () {
        if (selectedAnswerModel == null) {
          if (answer.isCorrect == true) {
            setState(() {
              isSelectQuestion = true;
              score++;
            });
          }
          if (!answer.isCorrect) {
            setState(() {
              isSelectQuestion = false;
            });
          }
        }
        setState(() {
          selectedAnswerModel = answer;
        });
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: AppSpacing.xxxs,
              left: AppSpacing.xxxs,
              right: AppSpacing.xxxs,
              bottom: AppSpacing.xs + 2,
            ),
            margin: const EdgeInsets.only(
              bottom: AppSpacing.lg - 2,
            ),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.kColorBlue400
                  : AppColors.kColorGray300,
              borderRadius: BorderRadius.circular(AppSpacing.sm),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.lg,
              ),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.kColorBlue200
                    : AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(AppSpacing.sm),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/svg/letter$index.svg',
                    height: 28,
                    width: 28,
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Flexible(
                    child: Text(
                      answer.answerText,
                      style: const TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showBottomSheetSuccess(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) {
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
                        Text(
                          'You have successfully completed $score/${questionsList.length} points',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
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
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: questionsList.length,
                      itemBuilder: (context, index) {
                        final question = questionsList[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  isSelectQuestion == false
                                      ? 'assets/svg/true.svg'
                                      : 'assets/svg/false.svg',
                                  width: 22,
                                  height: 22,
                                ),
                                const SizedBox(width: AppSpacing.sm),
                                Text(
                                  'Question ${index + 1}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.kColorGray600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            Text(
                              question.question,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColors.kPrimaryColor,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            Text(
                              question.answersList.firstWhere((element) {
                                return element.isCorrect == false;
                              }).answerText,
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.kOrangeColor,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              question.answersList
                                  .firstWhere(
                                    (element) => element.isCorrect == true,
                                  )
                                  .answerText,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.kColorGray600,
                              ),
                            ),
                            const Divider(),
                          ],
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
                context.go(QuizzPage.routePath);
              },
            ),
          ),
        );
      },
    );
  }
}
