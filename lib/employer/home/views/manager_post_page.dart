import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/employer/home/widgets/tab_bar_job_expire.dart';
import 'package:jobby_application/employer/home/widgets/tab_bar_job_paused.dart';
import 'package:jobby_application/employer/home/widgets/tab_bar_job_pending.dart';
import 'package:jobby_application/employer/home/widgets/tab_bar_job_rejected.dart';
import 'package:jobby_application/employer/home/widgets/tab_bar_job_showing.dart';
import 'package:jobby_application/employer/home/widgets/tab_custom.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class ManagerPostPage extends StatefulWidget {
  const ManagerPostPage({super.key});

  static const String routePath = '/manager_post';

  @override
  State<ManagerPostPage> createState() => _ManagerPostPageState();
}

class _ManagerPostPageState extends State<ManagerPostPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar:  const CustomAppBar(
        title: 'Manager Post',
        iconLeft: PhosphorIcons.magnifying_glass,
        //onTapLeft: () => context.push(SearchView.routePath),
      ),
      body: Column(
        children: [
          SizedBox(
            height: AppSpacing.xxxlg,
            child: TabBar(
              isScrollable: true,
              controller: tabController,
              indicator: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(AppSpacing.sm),
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: AppColors.kWhiteColor,
              unselectedLabelColor: AppColors.kPrimaryColor,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.kWhiteColor,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.kPrimaryColor,
              ),
              tabs: const [
                Tab(child: TabCustom(title: 'Job Showing', number: '2')),
                Tab(child: TabCustom(title: 'Job Paused', number: '2')),
                Tab(
                  child: TabCustom(title: 'Job Pending Approval', number: '8'),
                ),
                Tab(child: TabCustom(title: 'Job Rejected', number: '2')),
                Tab(child: TabCustom(title: 'Job Expired', number: '2')),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                TabABarJobShowing(),
                TabBarJobPaused(),
                TabBarJobPendingApproval(),
                TabBarJobRejected(),
                TabABarJobExpire(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
