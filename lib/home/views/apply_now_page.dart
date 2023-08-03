import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/account/views/account_page.dart';
import 'package:jobby_application/home/widgets/item_home_banner.dart';
import 'package:jobby_application/home/widgets/item_hot_jobs.dart';
import 'package:jobby_application/jobs/models/matching_model.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../shared/colors/app_color.dart';

class ApplyNowPage extends StatefulWidget {
  const ApplyNowPage({Key? key}) : super(key: key);

  static const String routePath = '/apply_now_page';

  @override
  State<ApplyNowPage> createState() => _ApplyNowPageState();
}

class _ApplyNowPageState extends State<ApplyNowPage> {

  bool seeMore = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: InfoProfile(),
                      ),

                    ],
                  ),
                ),
                Container(
                  color: AppColors.kWhiteColor,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          ItemWidget(
                            svgPath: 'assets/svg/file-check.svg',
                            title: 'Applied',
                            description: '234',
                            color: AppColors.kGreen200Color,
                          ),
                          ItemWidget(
                            svgPath: 'assets/svg/message.svg',
                            title: 'Review',
                            description: '200',
                            color: AppColors.kPurple200Color,
                          ),
                          ItemWidget(
                            svgPath: 'assets/svg/user-check.svg',
                            title: 'Contacted',
                            description: '100',
                            color: AppColors.kOrange200Color,
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      const Text(
                        'Description',
                        style: TextStyle(
                          color: AppColors.kPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColors.kWhiteColor,
                          gradient:  LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.kWhiteColor.withOpacity( 0.8),
                              AppColors.kWhiteColor,
                            ],
                          ),
                        ),

                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                            'Sed euismod, diam id tincidunt dapibus, '
                            'nunc nibh ultricies diam, quis maximus dolor nisl eget nunc. '
                            'Sed euismod, diam id tincidunt dapibus, '
                            'nunc nibh ultricies diam, quis maximus dolor nisl eget nunc. '
                            'Sed euismod, diam id tincidunt dapibus, '
                            'nunc nibh ultricies diam, quis maximus dolor nisl eget nunc. '
                            'Sed euismod, diam id tincidunt dapibus, '
                            'nunc nibh ultricies diam, quis maximus dolor nisl eget nunc. '
                            'Sed euismod, diam id tincidunt dapibus, '
                            'nunc nibh ultricies diam, quis maximus dolor nisl eget nunc. '
                            'Sed euismod, diam id tincidunt dapibus, '
                            'nunc nibh ultricies diam, quis maximus dolor nisl eget nunc. '
                            'Sed euismod, diam id tincidunt dapibus, '
                            'nunc nibh ultricies diam, quis maximus dolor nisl eget nunc. '
                            'Sed euismod, diam id tincidunt dapibus, '
                            'nunc nibh ultricies diam, quis maximus dolor nisl eget nunc. ',
                          style: TextStyle(
                            color: AppColors.kQuaternaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: seeMore ? 100 : 6,
                         overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              seeMore = !seeMore;
                            });
                          },
                          child: Text(
                            seeMore ? 'See less' : 'See more',
                            style: TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: AppColors.kPrimaryColor,
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: CircularPercentIndicator(
                              radius: 50,
                              lineWidth: 10,
                              percent: 0.7,
                              animation: true,
                              animationDuration: 2000,
                              progressColor: AppColors.kGreen400Color,
                              backgroundColor: AppColors.kGray200,
                              center: Text(
                                '70%',
                                style: TextStyle(
                                  color: AppColors.kGreen400Color,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Column(
                              children: [
                                TextMatchScore(
                                  label: 'Skill',
                                  value: '70%',
                                ),
                                PointsLine(
                                  percent: 0.7,
                                  color: AppColors.kPurple400Color,
                                ),
                                TextMatchScore(
                                  label: 'Exp',
                                  value: '60%',
                                ),
                                PointsLine(
                                  percent: 0.6,
                                  color: AppColors.kOrange400Color,
                                ),
                                TextMatchScore(
                                  label: 'Orientation',
                                  value: '90%',
                                ),
                                PointsLine(
                                  percent: 0.9,
                                  color: AppColors.kBlue400Color,
                                ),
                                TextMatchScore(
                                  label: 'Education',
                                  value: '50%',
                                ),
                                PointsLine(
                                  percent: 0.5,
                                  color: AppColors.kRed400Color,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
                            sizeBox1: matchingModel[index] == matchingModel.first ? 10 : 0,
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
                SizedBox(height: 70),

              ],
            ),
          ),
          Positioned(
              top: 40,
              left: 13,
              right: 13,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.kWhiteColor.withOpacity(0.3),
                      ),
                      child: const Icon(
                        PhosphorIcons.arrow_left,
                        color: AppColors.kPrimaryColor,
                        size: 24,
                      ),

                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.kWhiteColor.withOpacity(0.3),
                    ),
                    child: Icon(
                      PhosphorIcons.bookmark_simple,
                      color: AppColors.kPrimaryColor,
                      size: 24,
                    ),

                  ),
                ],
              ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: ButtonAction(
                isClick: true,
                onPressed: () {
                },
                text: 'Apply Now',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PointsLine extends StatelessWidget {
  const PointsLine({
    super.key,
    required this.percent,
    required this.color,
  });
  final double percent;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      animation: true,
      animationDuration: 1500,
      lineHeight: 8,
      percent: percent,
      progressColor: color,
      backgroundColor: AppColors.kGray200,

    );
  }
}

class TextMatchScore extends StatelessWidget {
  const TextMatchScore({
    super.key,
    required this.label,
    required this.value,
  });
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                color: AppColors.kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          Text(
            value,
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
