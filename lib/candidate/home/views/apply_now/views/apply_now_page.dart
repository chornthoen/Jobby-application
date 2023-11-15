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
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
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
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height * 0.36,
                  color: AppColors.kWhiteColor,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: AppSpacing.xxxlg * 2,
                        ),
                        height: height * 0.25,
                        color: AppColors.kOrangeColor400,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(top: AppSpacing.xxxlg),
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
                          color: AppColors.kColorBlue400,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: height * 0.12,
                      margin: const EdgeInsets.only(top: AppSpacing.sm),
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.lg,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: AppSpacing.md),
                          Text(
                            'Description',
                            style: CustomTextStyles.headlineSmallBold,
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          Text(
                            Constant.description,
                            style: CustomTextStyles.titleMediumGray700,
                            maxLines: seeMore ? 100 : 6,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          Center(
                            child: ButtonOutLineAction(
                              width: 130,
                              height: 40,
                              text: seeMore ? 'See Less' : 'See More',
                              onPressed: () {
                                setState(() {
                                  seeMore = !seeMore;
                                });
                              },
                            ),
                          ),
                          Text(
                            'Match Score',
                            style: CustomTextStyles.headlineSmallBold,
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          const MatchScore(),
                          const SizedBox(height: AppSpacing.lg),
                          Text(
                            'Similar Jobs',
                            style: CustomTextStyles.headlineSmallBold,
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
                const SizedBox(height: AppSpacing.lg),
              ],
            ),
          ),
          ActionBackAndSave(
            isSaved: isSaved,
            onSaved: onSaved,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: AppSpacing.lg,
          right: AppSpacing.lg,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        margin: const EdgeInsets.only(bottom: AppSpacing.md),
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

  void onSaved() {
    setState(() {
      if (!isSaved) {
        SnackBarTop.topSnackBarLottie(context, 'Saved Successfully!');
      } else {
        SnackBarTop.topSnackBarLottie(context, 'Unsaved Successfully!');
      }
      isSaved = !isSaved;
    });
  }
}
