import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/candidate/quizz/models/quiz_model.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Question extends StatelessWidget {
  const Question({
    required this.question, super.key,
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
    required this.answer, required this.isCorrect, super.key,
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
              top: AppSpacing.xxxs,
              left: AppSpacing.xxxs,
              right: AppSpacing.xxxs,
              bottom: AppSpacing.xs + 2,
            ),
            margin: const EdgeInsets.only(
              bottom: AppSpacing.lg -2,
            ),
            decoration: BoxDecoration(
              color: widget.isCorrect
                  ? AppColors.kColorBlue400
                  : AppColors.kColorGray300,
              borderRadius: BorderRadius.circular(AppSpacing.sm),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.sm,
                vertical: AppSpacing.lg,
              ),
              decoration: BoxDecoration(
                color: widget.isCorrect
                    ? AppColors.kColorBlue200
                    : AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(AppSpacing.sm),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/svg/letter1.svg',
                    height: AppSpacing.xlg,
                    width: AppSpacing.xlg,
                  ),
                  const SizedBox(width: AppSpacing.sm),
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
          ),
        ],
      ),
    );
  }
}

class RankWidget extends StatelessWidget {
  const RankWidget({
    required this.percent, super.key,
  });

  final double percent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSpacing.xlg,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          LinearPercentIndicator(
            lineHeight: 10,
            percent: percent,
            backgroundColor: AppColors.kColorGray200,
            progressColor: AppColors.kPurpleColor400,
            barRadius: const Radius.circular(AppSpacing.sm),
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
