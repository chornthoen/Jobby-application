import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/main/views/main_view.dart';
import 'package:jobby_application/quizz/views/leaderboard_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class AppBarQuiz extends StatelessWidget {
  const AppBarQuiz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              context.push(MainView.routePath);
            },
            child: const Image(
              image: AssetImage('assets/images/go_home.png'),
              width: 50,
              height: 50,
            ),
          ),
          const Spacer(),
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
            onTap: () {},
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
