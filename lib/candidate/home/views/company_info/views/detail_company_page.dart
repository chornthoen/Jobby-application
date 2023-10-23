import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/account/widgets/item_widget.dart';
import 'package:jobby_application/candidate/home/views/apply_now/widgets/action_back_and_save.dart';
import 'package:jobby_application/candidate/home/views/apply_now/widgets/profile.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/company_detail.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';

class DetailCompanyPage extends StatefulWidget {
  const DetailCompanyPage({super.key});

  static const String routePath = '/detail-company-page';

  @override
  State<DetailCompanyPage> createState() => _DetailCompanyPageState();
}

class _DetailCompanyPageState extends State<DetailCompanyPage> {
  List<String> tab = [
    'Overview',
    'Jobs',
    'Reviews',
  ];
  int selectedIndex = 0;

  bool follow = false;
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
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
                        color: AppColors.kColorRed400,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(top: AppSpacing.xxxlg),
                        child: const Image(
                          image: AssetImage('assets/images/cover_company.png'),
                          width: 200,
                          height: 200,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Profile(
                          name: 'Google',
                          image: 'assets/images/google_3d.png',
                          color: AppColors.kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ItemWidget(
                          svgPath: 'assets/svg/location.svg',
                          title: 'Location',
                          description: 'Phnom Penh',
                          color: AppColors.kGreenColor200,
                        ),
                        ItemWidget(
                          svgPath: 'assets/svg/users.svg',
                          title: 'Followers',
                          description: '11,000',
                          color: AppColors.kPurpleColor200,
                        ),
                        ItemWidget(
                          svgPath: 'assets/svg/star-outline.svg',
                          title: 'Rating',
                          isStar: true,
                          description: '9.5',
                          color: AppColors.kGreenColor200,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.lg,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: AppSpacing.xlg - 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ButtonOutLineAction(
                                width: width * 0.4,
                                text: follow ? 'Following' : 'Follow',
                                onPressed: onUnFollow,
                              ),
                              ButtonOutLineAction(
                                width:width * 0.4,
                                text: 'Message',
                                onPressed: onFollow,
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSpacing.xlg),
                          const TabCompanyDetail(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ActionBackAndSave(
            isSaved: isSaved,
            onSaved: onSave,
          ),
        ],
      ),
    );
  }

  void onFollow() {
    ShowBottomSheetCustom.showBottomSheetCustom(
      context: context,
      title: 'Please login to send message',
      image: 'assets/images/enter.png',
      description: 'You will stop receiving job alerts from this company.'
          'Do you want to continue?',
      textButton: 'Sign in',
      onPressed: () {
        setState(() {
          follow = !follow;
          Navigator.pop(context);
        });
      },
    );
  }
  void onUnFollow() {
    setState(() {
      if (follow) {
        ShowBottomSheetCustom
            .showBottomSheetCustom(
          context: context,
          title: 'Unfollow This Company',
          image: 'assets/images/unfollow.png',
          description:
          'You will stop receiving job alerts'
              ' from this company. Do you '
              'want to continue?',
          textButton: 'Unfollow',
          onPressed: () {
            setState(() {
              follow = !follow;
              Navigator.pop(context);
            });
          },
        );
      } else {
        follow = !follow;
      }
    });
  }
  void onSave() {
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
