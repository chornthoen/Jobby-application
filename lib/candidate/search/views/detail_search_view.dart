import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/candidate/search/widgets/tab_search_all.dart';
import 'package:jobby_application/candidate/search/widgets/tab_search_company.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';

class DetailSearchView extends StatefulWidget {
  const DetailSearchView({required this.title, super.key});

  final String title;

  static const String routePath = '/detail-search-view';

  @override
  State<DetailSearchView> createState() => _DetailSearchViewState();
}

class _DetailSearchViewState extends State<DetailSearchView>
    with SingleTickerProviderStateMixin {
  late TextEditingController _searchController;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: widget.title);
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.kBackgroundColor,
        toolbarHeight: AppSpacing.xxlg * 2,
        leadingWidth: AppSpacing.xxxlg,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: AppSpacing.xs,
            top: AppSpacing.sm,
          ),
          child: IconButton(
            splashRadius: AppSpacing.xlg,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              PhosphorIcons.arrow_left,
              color: Colors.black,
              size: AppSpacing.xlg,
            ),
          ),
        ),
        title: Container(
          margin: const EdgeInsets.only(top: AppSpacing.sm),
          child: CustomTextFieldForms(
            prefixIcon: const Icon(
              PhosphorIcons.magnifying_glass,
              size: AppSpacing.xlg,
            ),
            controller: _searchController,
            hintText: 'Search',
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: AppSpacing.sm,
              left: AppSpacing.lg,
              right: AppSpacing.lg,
            ),
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(AppSpacing.sm),
              boxShadow: [AppColors.kBoxShadowColor],
            ),
            child: TabBar(
              controller: tabController,
              indicator: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(AppSpacing.sm),
              ),
              unselectedLabelColor: AppColors.kPrimaryColor,
              labelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              tabs: const [
                Tab(text: 'All'),
                Tab(text: 'Jobs'),
                Tab(text: 'Companies'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                TabSearchAll(),
                TabSearchAll(),
                TabSearchCompany(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
