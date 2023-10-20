import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';


class SearchEmployerPage extends StatefulWidget {
  const SearchEmployerPage({super.key});

  static const String routePath = '/search_employer';

  @override
  State<SearchEmployerPage> createState() => _SearchEmployerPageState();
}

class _SearchEmployerPageState extends State<SearchEmployerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 60,
        toolbarHeight: 80,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: CustomTextFieldForms(
            hintText: 'Search',
            suffixIcon: PhosphorIcons.magnifying_glass,
          ),
        ),
        backgroundColor: AppColors.kBackgroundColor,
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Search'),
      ),
    );
  }
}
