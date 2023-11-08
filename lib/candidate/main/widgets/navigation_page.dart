import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/quizz/views/quizz_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({
    required this.tabController, super.key,
  });

  final TabController tabController;

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int tabController = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TabBar(
            onTap: (index) {
              setState(() {
                tabController = index;
                if (tabController == 0) {
                  widget.tabController.animateTo(0);
                } else if (tabController == 1) {
                  widget.tabController.animateTo(1);
                } else if (tabController == 2) {
                  widget.tabController.animateTo(2);
                } else if (tabController == 3) {
                  context.push(QuizzPage.routePath);
                } else if (tabController == 4) {
                  widget.tabController.animateTo(4);
                }
              });
            },
            indicatorSize: TabBarIndicatorSize.label,
            indicator: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: AppColors.kPrimaryColor,
                  width: 2,
                ),
              ),
            ),
            labelColor: AppColors.kPrimaryColor,
            controller: widget.tabController,
            unselectedLabelColor: AppColors.kColorGray500,
            tabs: [
              buildItem(
                tabController == 0
                    ? 'assets/svg/home-active.svg'
                    : 'assets/svg/home.svg',
                'Home',
                0,
              ),
              buildItem(
                tabController == 1
                    ? 'assets/svg/jobs-active.svg'
                    : 'assets/svg/jobs.svg',
                'Jobs',
                1,
              ),
              buildItem(
                tabController == 2
                    ? 'assets/svg/message-active.svg'
                    : 'assets/svg/message.svg',
                'Chat',
                2,
              ),
              buildItem(
                tabController == 3
                    ? 'assets/svg/game-active.svg'
                    : 'assets/svg/game.svg',
                'Quiz',
                3,
              ),
              buildItem(
                tabController == 4
                    ? 'assets/svg/user-active.svg'
                    : 'assets/svg/user.svg',
                'Profile',
                4,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildItem(String icon, String text, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs, top: AppSpacing.xs),
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            height: AppSpacing.xlg + 2,
            width: AppSpacing.xlg + 2,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
