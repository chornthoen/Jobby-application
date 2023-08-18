import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/quizz/models/quiz_model.dart';
import 'package:jobby_application/quizz/widgets/item_quiz.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';

class BottomSheets {
  bool isClick = false;
  static void showBottomSheet({
    required BuildContext context,
    required Widget child,
    required VoidCallback onPressed,
  }) {
    showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              child,
              Positioned(
                bottom: 10,
                left: 6,
                right: 6,
                child: ButtonAction(
                  isClick: true,
                  text: 'Save',
                  onPressed: onPressed,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  static void showBottomSheetCustom({
    required BuildContext context,
    required String title,
    required String image,
    required String textButton,
    required String description,
    required VoidCallback onPressed,
  }) {
    showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.kPrimaryColor),
                    ),
                    const SizedBox(height: 10),
                    Image(
                      image: AssetImage(image),
                      width: 180,
                      height: 180,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Text(
                        description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kQuaternaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ButtonAction(
                  isClick: true,
                  text: textButton,
                  onPressed: onPressed,
                ),
                const SizedBox(height: 10),
                ButtonOutLineAction(
                  text: 'Cancel',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  static void showBottomSheetDetailQuiz({
   required BuildContext context,
   required QuizModel quizModel,
    required VoidCallback onPressed,
    required VoidCallback isLike,
    bool? isLikeClick,
  }) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      backgroundColor: AppColors.kBackgroundColor,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.kGreyColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AppBarBottomSheet(
                  title: quizModel.title,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 16),
              ItemQuizs(
                image: quizModel.image,
                title: quizModel.title,
                level: quizModel.level,
                question: quizModel.question,
                like: quizModel.like,
                user: quizModel.user,
                percent: quizModel.percent,
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Text(
                      'Tmrw studio owns, manages and operates a system of Trade Centers - A shopping, entertainment and culinary paradise with 4 brand lines.',
                      style: TextStyle(
                        color: AppColors.kQuaternaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.kBlueColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/like1.svg',
                            width: 35,
                            height: 35,
                            color: AppColors.kWhiteColor,
                          ),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '100%',
                                style: TextStyle(
                                  color: AppColors.kWhiteColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '100 votes',
                                style: TextStyle(
                                  color: AppColors.kWhiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.kWhiteColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              onPressed: isLike,
                              icon: SvgPicture.asset(
                                'assets/svg/like1.svg',
                                width: 30,
                                height: 30,
                                color: isLikeClick == false
                                    ? AppColors.kBlueColor
                                    : AppColors.kRed400Color,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.kWhiteColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              onPressed: isLike,
                              icon: SvgPicture.asset(
                                'assets/svg/dislike.svg',
                                width: 30,
                                height: 30,
                                color: AppColors.kBlueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ButtonAction(
                  isClick: true,
                  onPressed: onPressed,
                  text: 'Play Now',
                ),
              ),
              const SizedBox(height: 26),
            ],
          ),
        );
      },
    );
  }
}

class AppBarBottomSheet extends StatelessWidget {
  const AppBarBottomSheet({
    super.key,
    this.title  = '',
    this.onPressed,
  });
  final String? title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
         Text(
          title!,
          style: const TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: AppColors.kGray200,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              PhosphorIcons.x,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
