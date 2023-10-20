import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/candidate/jobs/widgets/tab_applied.dart';
import 'package:jobby_application/candidate/jobs/widgets/tab_favorite.dart';
import 'package:jobby_application/candidate/jobs/widgets/tab_matching.dart';
import 'package:jobby_application/candidate/jobs/widgets/tab_rejected.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

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

  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
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
    return GestureDetector(
      onTap: closeKeyboard,
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.kBackgroundColor,
          elevation: 0,
          toolbarHeight: 80,
          title: const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: CustomTextFieldForms(
              prefixIcon: Icon(
                PhosphorIcons.magnifying_glass,
                size: 28,
              ),
              keyboardType: TextInputType.emailAddress,
              hintText: 'Search',
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 44,
              child: TabBar(
                controller: tabController,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                physics: const BouncingScrollPhysics(),
                indicator: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                unselectedLabelColor: AppColors.kPrimaryColor,
                labelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
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
      ),
    );
  }
}
