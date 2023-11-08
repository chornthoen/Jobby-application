import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/employer/post/views/post_em_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class NavigationEmployerPage extends StatefulWidget {
  const NavigationEmployerPage({
    required this.tabController, super.key,
  });

  final TabController tabController;

  @override
  State<NavigationEmployerPage> createState() => _NavigationEmployerPageState();
}

class _NavigationEmployerPageState extends State<NavigationEmployerPage> {
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
                  context.push(PostEmployerPage.routePath);
                } else if (tabController == 3) {
                  widget.tabController.animateTo(3);
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
                  width: AppSpacing.xxs,
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
                    ? 'assets/svg/search-active.svg'
                    : 'assets/svg/user-search.svg',
                'Search',
                0,
              ),
              buildItem(
                tabController == 2
                    ? 'assets/svg/add-circle.svg'
                    : 'assets/svg/add-circle.svg',
                'Post',
                0,
              ),
              buildItem(
                tabController == 3
                    ? 'assets/svg/message-active.svg'
                    : 'assets/svg/message.svg',
                'Chat',
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
