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

class _JobPageState extends State<JobPage>  {


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
          toolbarHeight: 108,
          title: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: TextFieldForms(
                  prefixIcon: Icon(
                    PhosphorIcons.magnifying_glass,
                    size: 28,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Search',
                ),
              ),
              //list view
              SizedBox(
                height: 34,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tabList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          this.index = index;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: this.index == index
                              ? AppColors.kPrimaryColor
                              : AppColors.kGray200,
                          borderRadius: BorderRadius.circular(34),
                        ),
                        child: Text(
                          tabList[index],
                          style: TextStyle(
                            color: this.index == index
                                ? Colors.white
                                : AppColors.kQuaternaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              tabContent[index],
            ],
          ),
        ),
      ),
    );
  }
}
