import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/home/widgets/widget_see_all.dart';
import 'package:jobby_application/main/views/main_view.dart';
import 'package:jobby_application/quizz/models/quiz_model.dart';
import 'package:jobby_application/quizz/question/views/question_1.dart';
import 'package:jobby_application/quizz/views/leaderboard_page.dart';
import 'package:jobby_application/quizz/views/more_turns_page.dart';
import 'package:jobby_application/quizz/views/see_all_program.dart';
import 'package:jobby_application/quizz/widgets/item_quiz.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({
    Key? key,
  }) : super(key: key);

  static const String routePath = '/quizz-page-3';

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
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
            toolbarHeight: 70,
            leadingWidth: 62,
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () {
                context.push(MainView.routePath);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                child: const Image(
                  image: AssetImage('assets/images/go_home.png'),
                  width: 50,
                  height: 50,
                ),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  context.push(LeaderBoardPage.routePath);
                },
                child: const Image(
                  image: AssetImage('assets/images/rank.png'),
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  context.push(MoreTurnsPage.routePath);
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/pech.png'),
                      width: 100,
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
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Image(
                    image: AssetImage('assets/images/quizz_logo_text.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                WidgetSeeAll(
                  onPressed: () {},
                  color: AppColors.kWhiteColor,
                  title: 'In-Progress',
                ),
                ItemQuizs(
                  image: 'assets/images/winner.png',
                  title: 'HTML Quiz',
                  level: 'Easy',
                  question: '10',
                  like: '100',
                  user: '102',
                  percent: '10%',
                  onPressed: () {},
                ),
                WidgetSeeAll(
                  onPressed: () {
                    context.push(SeeAllProgrammingPage.routePath);
                  },
                  color: AppColors.kWhiteColor,
                  title: 'Programming Language',
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
