import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({
    super.key,
    required this.tabController,
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
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.075,
        child: TabBar(
          onTap: (index) {
            setState(() {
              tabController = index;
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
          unselectedLabelColor: AppColors.kQuinaryColor,
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
              0,
            ),
            buildItem(
              tabController == 2
                  ? 'assets/svg/message-active.svg'
                  : 'assets/svg/message.svg',
              'Chat',
              0,
            ),
            buildItem(
              tabController == 3
                  ? 'assets/svg/game-active.svg'
                  : 'assets/svg/game.svg',
              'Quiz',
              0,
            ),
            buildItem(
              tabController == 4
                  ? 'assets/svg/user-active.svg'
                  : 'assets/svg/user.svg',
              'Profile',
              0,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem(String icon, String text, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, top: 6),
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            height: 28,
            width: 28,
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
