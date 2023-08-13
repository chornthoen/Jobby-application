import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/quizz/models/quiz_model.dart';
import 'package:jobby_application/quizz/views/quizz_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';

class SuccessQuizPage extends StatefulWidget {
  const SuccessQuizPage({
    Key? key,
    required this.questionModel,
  }) : super(key: key);

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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image(
                    image: const AssetImage('assets/images/on_boarding_4.png'),
                    width: 220,
                    height: 250,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
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
                    const SizedBox(height: 8),
                    const Text(
                      'for completing the quiz',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kQuaternaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'Your answer',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.questionModel.length,
                  itemBuilder: (context, index) {
                    return itemAnswer(
                      title: widget.questionModel[index].question,
                      answer: widget.questionModel[index].answersList[index].answerText,
                      isTrue: widget.questionModel[index].answersList[index].isCorrect,
                    );
                  },
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: ButtonAction(
          isClick: true,
          text: 'Go to home',
          onPressed: () {
            context.go(QuizzPage.routePath);
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
            Text(
              'Question 1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.kQuaternaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.kPrimaryColor,
          ),
        ),
        const SizedBox(height: 8),
        // Text(
        //   'Early in the SDLC',
        //   style: TextStyle(
        //     decoration: TextDecoration.lineThrough,
        //     fontSize: 16,
        //     fontWeight: FontWeight.w400,
        //     color: AppColors.kOrangeColor,
        //   ),
        // ),
        SizedBox(height: 5),
        Text(
          answer,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.kQuaternaryColor,
          ),
        ),
        Divider()
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
            Text(
              'Question 1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.kQuaternaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'When should a developer apply usability priciples?',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.kPrimaryColor,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Early in the SDLC',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.kOrangeColor,
          ),
        ),
        SizedBox(height: 5),
        Text(
          //'Your answer: ${question.answersList.firstWhere((element) => element.isCorrect).answerText}',
          'Your answer: Early in the SDLC',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.kQuaternaryColor,
          ),
        ),
        Divider()
      ],
    );
  }
}
