import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/candidate/search/widgets/tab_search_all.dart';
import 'package:jobby_application/candidate/search/widgets/tab_search_company.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

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
        toolbarHeight: 62,
        leadingWidth: 46,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5, top: 8),
          child: IconButton(
            splashRadius: 25,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              PhosphorIcons.arrow_left,
              color: Colors.black,
              size: 28,
            ),
          ),
        ),
        title: Container(
          margin: const EdgeInsets.only(top: 8),
          child: TextFieldForms(
            prefixIcon: const Icon(PhosphorIcons.magnifying_glass, size: 24),
            controller: _searchController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Search',
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [AppColors.kBoxShadowColor],
            ),
            child: TabBar(
              controller: tabController,
              indicator: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              unselectedLabelColor: AppColors.kPrimaryColor,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 16,
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
