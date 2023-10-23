import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';

import 'detail_search_view.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  static const String routePath = '/search-view';

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
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

  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
  }

  void removeAllListSearch() {
    listSearch.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: closeKeyboard,
      child: Scaffold(
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
            child: CustomTextFieldForms(
              prefixIcon: const Icon(PhosphorIcons.magnifying_glass, size: 24),
              controller: _searchController,
              keyboardType: TextInputType.emailAddress,
              hintText: 'Search',
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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

class RecentSearch extends StatelessWidget {
  const RecentSearch({
    super.key,
    this.onTap,
    this.title = '',
  });

  final VoidCallback? onTap;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.all(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      dense: true,
      title: Row(
        children: [
          const Icon(
            PhosphorIcons.clock,
            color: AppColors.kPrimaryColor,
            size: 24,
          ),
          const SizedBox(width: 10),
          Text(
            title!,
            style: const TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonClear extends StatelessWidget {
  const ButtonClear({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Recently Searched',
          style: TextStyle(
            color: AppColors.kColorGray500,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: onPressed,
          child: const Text(
            'Clear All',
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class ModelSearch {
  ModelSearch({
    required this.title,
  });

  final String title;
}

final listSearch = [
  ModelSearch(title: 'Flutter Developer'),
  ModelSearch(title: 'UI/UX Designer'),
  ModelSearch(title: 'Product Manager'),
  ModelSearch(title: 'Flutter Developer'),
  ModelSearch(title: 'UI/UX Designer'),
  ModelSearch(title: 'Product Manager'),
  ModelSearch(title: 'Flutter Developer'),
  ModelSearch(title: 'UI/UX Designer'),
  ModelSearch(title: 'Product Manager'),
  ModelSearch(title: 'Flutter Developer'),
  ModelSearch(title: 'UI/UX Designer'),
  ModelSearch(title: 'Product Manager'),
  ModelSearch(title: 'Flutter Developer'),
  ModelSearch(title: 'UI/UX Designer'),
  ModelSearch(title: 'Product Manager'),
  ModelSearch(title: 'Flutter Developer'),
  ModelSearch(title: 'UI/UX Designer'),
  ModelSearch(title: 'Product Manager'),
  ModelSearch(title: 'Flutter Developer'),
  ModelSearch(title: 'UI/UX Designer'),
  ModelSearch(title: 'Product Manager'),
  ModelSearch(title: 'Flutter Developer'),
  ModelSearch(title: 'UI/UX Designer'),
  ModelSearch(title: 'Product Manager'),
];
