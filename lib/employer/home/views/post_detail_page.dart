import 'package:flutter/material.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/tab_candidates.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/tab_hiring_team.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/tab_job_detail.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/tab_timeline_and_note.dart';
import 'package:jobby_application/employer/home/widgets/tab_post_detail.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class PostDetailPage extends StatefulWidget {
  const PostDetailPage({super.key});

  static const String routePath = '/post-detail-page';

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Post Detail'),
      backgroundColor: AppColors.kBackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 44,
            child: TabBar(
              onTap: (index) {
                setState(() {
                  tabController.index = index;
                });
              },
              isScrollable: true,
              controller: tabController,
              physics: const NeverScrollableScrollPhysics(),
              indicator: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.kPrimaryColor,
                    width: 2,
                  ),
                ),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: AppColors.kPrimaryColor,
              unselectedLabelColor: AppColors.kQuinaryColor,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.kWhiteColor,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.kPrimaryColor,
              ),
              tabs: [
                Tab(
                  child: TabPostDetail(
                    title: 'Candidates',
                    number: '10',
                    tabController: tabController,
                    index: 0,
                  ),
                ),
                Tab(
                  child: TabPostDetail(
                    title: 'Job Details',
                    number: '10',
                    tabController: tabController,
                    index: 1,
                  ),
                ),
                Tab(
                  child: TabPostDetail(
                    title: 'Timeline & Notes',
                    number: '10',
                    tabController: tabController,
                    index: 2,
                  ),
                ),
                Tab(
                  child: TabPostDetail(
                    title: 'Hiring Team',
                    number: '10',
                    tabController: tabController,
                    index: 3,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                TabCandidate(),
                TabJobDetail(),
                TabTimelineAndNote(),
                TabHiringTeam(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
