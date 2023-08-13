import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/quizz/models/quiz_model.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../shared/colors/app_color.dart';

class Question extends StatelessWidget {
  const Question({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: const TextStyle(
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
              color: widget.isCorrect
                  ? AppColors.kBlue400Color
                  : AppColors.kSeptenaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: widget.isCorrect
                    ? AppColors.kBlue200Color
                    : AppColors.kWhiteColor,
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

