import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/quizz/widgets/tab_all_time.dart';
import 'package:jobby_application/candidate/quizz/widgets/tab_weekly.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class LeaderBoardPage extends StatefulWidget {
  const LeaderBoardPage({super.key});

  static const String routePath = '/leader-board-page';

  @override
  State<LeaderBoardPage> createState() => _LeaderBoardPageState();
}

class _LeaderBoardPageState extends State<LeaderBoardPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController; // declare tab controller

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/leaderboard.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 65,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Image(
                  image: AssetImage('assets/images/back.png'),
                  width: 44,
                  height: 44,
                ),
              ),
            ),
            leadingWidth: 50,
            title: const Text(
              'Leaderboard',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppColors.kWhiteColor,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(3),
                height: 46,
                decoration: BoxDecoration(
                  color: AppColors.kWhiteColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TabBar(
                  controller: tabController,
                  indicator: BoxDecoration(
                    color: AppColors.kBlue400Color,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  unselectedLabelColor: AppColors.kWhiteColor.withOpacity(0.5),
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  tabs: const [
                    Tab(text: 'Weekly'),
                    Tab(text: 'All Time'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    TabWeekly(),
                    TabAllTime(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
