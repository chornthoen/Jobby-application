import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/jobs/widgets/tab_applied.dart';
import 'package:jobby_application/candidate/jobs/widgets/tab_favorite.dart';
import 'package:jobby_application/candidate/jobs/widgets/tab_matching.dart';
import 'package:jobby_application/candidate/jobs/widgets/tab_rejected.dart';
import 'package:jobby_application/candidate/search/views/search_view.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key});

  static const String routePath = '/job-page';

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  List<String> tabList = [
    'Matching',
    'Favorited',
    'Applied',
    'Rejected',
  ];
  List<Widget> tabContent = [
    const MatchingContent(),
    const FavoriteContent(),
    const AppliedContent(),
    const RejectedContent(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.kBackgroundColor,
        elevation: 0,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.only(
            top: AppSpacing.sm,
            bottom: AppSpacing.sm,
          ),
          child: GestureDetector(
            onTap: () => context.push(SearchView.routePath),
            child: const CustomTextFieldForms(
              enable: false,
              prefixIcon: Icon(
                PhosphorIcons.magnifying_glass,
                size: AppSpacing.xlg,
              ),
              keyboardType: TextInputType.emailAddress,
              hintText: 'Search',
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: AppSpacing.xxxlg,
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              physics: const BouncingScrollPhysics(),
              indicator: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(AppSpacing.sm),
              ),
              unselectedLabelColor: AppColors.kPrimaryColor,
              labelStyle: CustomTextStyles.buttonTitleSmallSemiBoldWhite,
              unselectedLabelStyle:
                  CustomTextStyles.buttonTitleSmallSemiBoldBlack,
              tabs: const [
                Tab(text: 'Matching'),
                Tab(text: 'Favorited'),
                Tab(text: 'Applied'),
                Tab(text: 'Rejected'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: tabContent,
            ),
          ),
        ],
      ),
    );
  }
}
