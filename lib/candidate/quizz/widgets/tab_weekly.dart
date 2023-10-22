import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/quizz/models/leader_board_model.dart';
import 'package:jobby_application/candidate/quizz/widgets/avatar_rank.dart';
import 'package:jobby_application/candidate/quizz/widgets/item_leader_boad.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class TabWeekly extends StatefulWidget {
  const TabWeekly({super.key});

  @override
  State<TabWeekly> createState() => _TabWeeklyState();
}

class _TabWeeklyState extends State<TabWeekly> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const AvatarRank(
                  image: 'assets/images/rose.png',
                  name: 'Rose',
                  diamond: '10k',
                  rank: 'assets/svg/p2.svg',
                  number: 'assets/svg/number2.svg',
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 65),
                  child: const AvatarRank(
                    image: 'assets/images/thoen.png',
                    name: 'Chorn Thoen',
                    diamond: '200k',
                    rank: 'assets/svg/p1.svg',
                    number: 'assets/svg/number1.svg',
                    colorName: AppColors.kOrangeColor400,
                  ),
                ),
                const AvatarRank(
                  image: 'assets/images/jenny.png',
                  name: 'John Doe',
                  diamond: '10k',
                  rank: 'assets/svg/p3.svg',
                  number: 'assets/svg/number3.svg',
                ),
              ],
            ),
            const SizedBox(height: 4),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ItemLeaderboard(
                  id: leaderboardModel[index].id,
                  image: leaderboardModel[index].image,
                  name: leaderboardModel[index].name,
                  diamond: leaderboardModel[index].diamond,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
