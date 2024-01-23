import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/search/models/model_search.dart';
import 'package:jobby_application/candidate/search/views/detail_search_view.dart';
import 'package:jobby_application/candidate/search/widgets/RecentSearch.dart';
import 'package:jobby_application/candidate/search/widgets/button_clear.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';

class SearchEmployerPage extends StatefulWidget {
  const SearchEmployerPage({super.key});

  static const String routePath = '/search_employer';

  @override
  State<SearchEmployerPage> createState() => _SearchEmployerPageState();
}

class _SearchEmployerPageState extends State<SearchEmployerPage> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void removeAllListSearch() {
    listSearch.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.close(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.kBackgroundColor,
          automaticallyImplyLeading: false,
          toolbarHeight: AppSpacing.xxlg * 2,
          leadingWidth: AppSpacing.xxxlg,
          elevation: 0,
          title: CustomTextFieldForms(
            prefixIcon: const Icon(
              PhosphorIcons.magnifying_glass,
              size: AppSpacing.xlg,
            ),
            controller: _searchController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Search',
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.sm,
            ),
            child: Column(
              children: [
                ButtonClear(onPressed: removeAllListSearch),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: listSearch.length,
                  itemBuilder: (context, index) {
                    return RecentSearch(
                      onTap: () {
                        context.push(
                          DetailSearchView.routePath,
                          extra: listSearch[index].title,
                        );
                      },
                      title: listSearch[index].title,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
