import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/quizz/models/quiz_model.dart';
import 'package:jobby_application/quizz/question/views/succes_quiz_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Question1Page extends StatefulWidget {
  const Question1Page({Key? key}) : super(key: key);

  static const String routePath = '/question-1-page';

  @override
  State<Question1Page> createState() => _Question1PageState();
}

class _Question1PageState extends State<Question1Page> {

  List<QuestionModel> q = getQuestion();
  int currentQuestion = 0;
  AnswerModel? selectedAnswerModel;
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
        leadingWidth: 62,
        leading: IconButton(
          splashRadius: 24,
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
            size: 26,
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
                    const SizedBox(width: 4),
                    const Text(
                      '10',
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  'Question ${currentQuestion+1}/${q.length}',
                  style: TextStyle(
                    color: AppColors.kQuaternaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.kOrange200Color.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/lightbulb.png'),
                        width: 20,
                        height: 20,

                      ),
                      const Text(
                        'Hint',
                        style: TextStyle(
                          color: AppColors.kOrange400Color,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            RankWidget(
              percent: (currentQuestion +1).toDouble() /q.length.toDouble(),
            ),
            const SizedBox(height: 16),
            Question(
              question: q[currentQuestion].question,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: q[currentQuestion].answersList.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final answer = q[currentQuestion].answersList[index];
                  return _answer(answer,index+1);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: ButtonAction(
          isClick: selectedAnswerModel != null,
          text: currentQuestion < q.length - 1 ? 'Next' : 'Submit',
          onPressed: () {
            if (selectedAnswerModel == null) return;
            if (currentQuestion < q.length - 1) {
              setState(() {
                currentQuestion++;
                selectedAnswerModel = null;
              });
            } else {
              context.go(SuccessQuizPage.routePath,
                extra: q[currentQuestion],
              );
            }
          },

        ),
      ),
    );
  }
  Widget _answer(AnswerModel answer,int index){
    final isSelected = answer == selectedAnswerModel;
    return  GestureDetector(
      onTap: () {
        setState(() {
          selectedAnswerModel = answer;
        });
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 1,
              left: 1,
              right: 1,
              bottom: 6,
            ),
            margin: const EdgeInsets.only(
              bottom: 14,
            ),

            decoration: BoxDecoration(
              color: isSelected ? AppColors.kBlue400Color : AppColors.kSeptenaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.kBlue200Color : AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/svg/letter$index.svg',
                    height: 28,
                    width: 28,
                  ),
                  const SizedBox(width: 10),
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
          )
        ],
      ),
    );
  }
}

class RankWidget extends StatelessWidget {
  const RankWidget({
    super.key,
    required this.percent,
  });
  final double percent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          LinearPercentIndicator(
            lineHeight: 10,
            percent: percent,
            backgroundColor: AppColors.kGray200,
            progressColor: AppColors.kPurple400Color,
            barRadius: const Radius.circular(10),
          ),
          Positioned(
            right: 0,
            child: SvgPicture.asset(
              'assets/svg/star-circle-color.svg',
              height: 26,
              width: 26,
            ),
          ),
        ],
      ),
    );
  }
}

class Question extends StatelessWidget {
  const Question({
    super.key,
    required this.question,
  });
  final String question;

  @override
  Widget build(BuildContext context) {
    return  Text(
      question,
      style: TextStyle(
        color: AppColors.kPrimaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class ItemQuestion extends StatefulWidget {
  const ItemQuestion({
    super.key,
    required this.answer,
    required this.isCorrect,
     this.onPressed,
  });
  final String answer;
  final bool isCorrect;
  final VoidCallback? onPressed;

  @override
  State<ItemQuestion> createState() => _ItemQuestionState();
}

class _ItemQuestionState extends State<ItemQuestion> {

  bool isSelected = false;
  AnswerModel? selectedAnswerModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onPressed!();
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 1,
              left: 1,
              right: 1,
              bottom: 6,
            ),
            margin: const EdgeInsets.only(
              bottom: 14,
            ),

            decoration: BoxDecoration(
              color: widget.isCorrect ? AppColors.kBlue400Color : AppColors.kSeptenaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: widget.isCorrect ? AppColors.kBlue200Color : AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/svg/letter1.svg',
                    height: 28,
                    width: 28,
                  ),
                  const SizedBox(width: 10),
                   Flexible(
                    child: Text(
                      widget.answer,
                      style: TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
