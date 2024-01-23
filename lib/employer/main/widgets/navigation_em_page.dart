import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class NavigationEmployerPage extends StatefulWidget {
  const NavigationEmployerPage({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  final int currentIndex;
  final ValueSetter<int> onTap;

  @override
  State<NavigationEmployerPage> createState() => _NavigationEmployerPageState();
}

class _NavigationEmployerPageState extends State<NavigationEmployerPage> {
  int tabController = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
        child: Row(
          children: [
            buildItem(
              icon: widget.currentIndex == 0
                  ? 'assets/svg/home-active.svg'
                  : 'assets/svg/home.svg',
              text: 'Home',
              index: 0,
              onTap: () => widget.onTap(0),
            ),
            buildItem(
              icon: widget.currentIndex == 1
                  ? 'assets/svg/search-active.svg'
                  : 'assets/svg/user-search.svg',
              text: 'Search',
              index: 1,
              onTap: () => widget.onTap(1),
            ),
            buildItem(
              icon: widget.currentIndex == 2
                  ? 'assets/svg/add-circle.svg'
                  : 'assets/svg/add-circle.svg',
              text: 'Post',
              index: 2,
              onTap: () => widget.onTap(2),
            ),
            buildItem(
              icon: widget.currentIndex == 3
                  ? 'assets/svg/message-active.svg'
                  : 'assets/svg/message.svg',
              text: 'Chat',
              index: 3,
              onTap: () => widget.onTap(3),
            ),
            buildItem(
              icon: widget.currentIndex == 4
                  ? 'assets/svg/user-active.svg'
                  : 'assets/svg/user.svg',
              text: 'Profile',
              index: 4,
              onTap: () => widget.onTap(4),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem({
    required String icon,
    required String text,
    required int index,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Ink(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: AppSpacing.xxs,
                width: AppSpacing.xlg * 2,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: index == widget.currentIndex
                      ? AppColors.kPrimaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(AppSpacing.sm),
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              SvgPicture.asset(
                icon,
                height: AppSpacing.xlg + 2,
                width: AppSpacing.xlg + 2,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: index == widget.currentIndex
                      ? AppColors.kPrimaryColor
                      : AppColors.kColorGray600,
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
            ],
          ),
        ),
      ),
    );
  }
}
