import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/quizz/models/quiz_model.dart';
import 'package:jobby_application/candidate/quizz/question/views/question_1.dart';
import 'package:jobby_application/candidate/quizz/widgets/item_quiz.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';

class SeeAllProgrammingPage extends StatefulWidget {
  const SeeAllProgrammingPage({super.key});

  static const String routePath = '/see-all-programming-page';

  @override
  State<SeeAllProgrammingPage> createState() => _SeeAllProgrammingPageState();
}

class _SeeAllProgrammingPageState extends State<SeeAllProgrammingPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/quiz_background.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 80,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Image(
                  image: AssetImage('assets/images/back.png'),
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            leadingWidth: 50,
            title: const Text(
              'Programming Language',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppColors.kWhiteColor,
              ),
            ),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: quizModel.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return ItemQuizs(
                image: quizModel[index].image,
                title: quizModel[index].title,
                level: quizModel[index].level,
                question: quizModel[index].question,
                like: quizModel[index].like,
                user: quizModel[index].user,
                percent: quizModel[index].percent,
                onPressed: () {
                  BottomSheets.showBottomSheetDetailQuiz(
                    context: context,
                    quizModel: quizModel[index],
                    onPressed: () {
                      context.push(Question1Page.routePath);
                    },
                    isLike: () {
                      setState(() {
                        quizModel[index].isLike = !quizModel[index].isLike;
                      });
                    },
                    isLikeClick: quizModel[index].isLike,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
