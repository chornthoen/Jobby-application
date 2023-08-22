import 'package:flutter/material.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/tab_note.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/tab_timeline.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class TabTimelineAndNote extends StatefulWidget {
  const TabTimelineAndNote({super.key});

  @override
  State<TabTimelineAndNote> createState() => _TabTimelineAndNoteState();
}

class _TabTimelineAndNoteState extends State<TabTimelineAndNote>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(3),
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(2),
                bottomLeft: Radius.circular(2),
              ),
              boxShadow: [
                AppColors.kBoxShadowColor1,
                AppColors.kBoxShadowColor,
              ],
            ),
            child: TabBar(
              controller: _tabController,
              indicator: const BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(2),
                  bottomLeft: Radius.circular(2),
                ),
              ),
              labelColor: AppColors.kWhiteColor,
              unselectedLabelColor: AppColors.kBlackColor,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              tabs: const [
                Tab(text: 'Timeline'),
                Tab(text: 'Notes'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                TabTimeline(),
                TabNotes(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
