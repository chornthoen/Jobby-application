import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/account/widgets/item_widget.dart';
import 'package:jobby_application/candidate/home/views/apply_now/models/status_model.dart';
import 'package:jobby_application/candidate/home/views/apply_now/widgets/action_back_and_save.dart';
import 'package:jobby_application/candidate/home/views/apply_now/widgets/profile.dart';
import 'package:jobby_application/candidate/home/views/apply_now/widgets/text_match_score.dart';
import 'package:jobby_application/candidate/home/widgets/item_hot_jobs.dart';
import 'package:jobby_application/candidate/jobs/models/matching_model.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/constant/constant.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';

import 'package:jobby_application/shared/widgets/snack_bar_top.dart';

class ApplyNowPage extends StatefulWidget {
  const ApplyNowPage({super.key});

  static const String routePath = '/apply_now_page';

  @override
  State<ApplyNowPage> createState() => _ApplyNowPageState();
}

class _ApplyNowPageState extends State<ApplyNowPage> {
  bool seeMore = false;
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 320,
                  color: AppColors.kWhiteColor,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 80),
                        height: 220,
                        color: AppColors.kOrange400Color,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(top: 30),
                        child: const Image(
                          image: AssetImage('assets/images/cover_detail.png'),
                          width: 200,
                          height: 200,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Profile(
                          name: 'Software Engineer',
                          image: 'assets/images/technology.png',
                          color: AppColors.kBlue400Color,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      margin: const EdgeInsets.only(top: 10),
                      child: ListView.builder(
                        itemCount: statusList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final model = statusList[index];
                          return ItemWidget(
                            svgPath: model.svgUrl,
                            title: model.title,
                            description: model.description,
                            color: model.color,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 14),
                          const Text(
                            'Description',
                            style: TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            Constant.description,
                            style: const TextStyle(
                              color: AppColors.kQuaternaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: seeMore ? 100 : 6,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 10),
                          ButtonOutLineAction(
                            width: 120,
                            height: 40,
                            text: seeMore ? 'See Less' : 'See More',
                            onPressed: () {
                              setState(() {
                                seeMore = !seeMore;
                              });
                            },
                          ),
                          const Text(
                            'Match Score',
                            style: TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const MatchScore(),
                          const SizedBox(height: 20),
                          const Text(
                            'Similar Jobs',
                            style: TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          ListView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              final model = matchingModel[index];
                              return ItemHotJobs(
                                title: model.title,
                                name: model.name,
                                image: model.image,
                                salary: model.salary,
                                time: model.time,
                                role: model.role,
                                date: model.date,
                                color: model.color,
                                isSaved: model.isSaved,
                                onApply: () {},
                                onSaved: () {
                                  setState(() {
                                    model.isSaved = !model.isSaved;
                                  });
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
          ActionBackAndSave(
            isSaved: isSaved,
            onSaved: () {
              setState(() {
                if (!isSaved) {
                  SnackBarTop.topSnackBarLottie(context, 'Saved Successfully!');
                } else {
                  SnackBarTop.topSnackBarLottie(
                    context,
                    'Unsaved Successfully!',
                  );
                }
                isSaved = !isSaved;
              });
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        margin: const EdgeInsets.only(bottom: 10),
        child: CustomElevatedButton(
          isClick: true,
          text: 'Apply Now',
          onPressed: () {
            context.pop(context);
          },
        ),
      ),
    );
  }
}
