import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/candidate/account/widgets/item_widget.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ProfileInfoEmployer extends StatelessWidget {
  const ProfileInfoEmployer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      height: height * 0.36,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: height * 0.265,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSpacing.lg),
              color: AppColors.kWhiteColor,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.kColorGray200,
                  blurRadius: AppSpacing.xxs,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSpacing.xxs),
                  decoration: const BoxDecoration(
                    color: AppColors.kWhiteColor,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: AppSpacing.xxxlg + 6,
                    backgroundImage: AssetImage('assets/images/rose.png'),
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Chorn Thoen',
                      style: TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    SvgPicture.asset(
                      'assets/svg/verified.svg',
                      width: AppSpacing.xlg - 4,
                      height: AppSpacing.xlg - 4,
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xs),
                const Text(
                  'Technologies',
                  style: TextStyle(
                    color: AppColors.kColorGray600,
                    fontSize: AppSpacing.lg,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ItemWidget(
                        svgPath: 'assets/svg/jobs.svg',
                        title: 'Total Jobs',
                        description: '222',
                        color: AppColors.kGreenColor200,
                      ),
                      ItemWidget(
                        svgPath: 'assets/svg/eye.svg',
                        title: 'Job Viewed',
                        description: '222',
                        color: AppColors.kPurpleColor200,
                      ),
                      ItemWidget(
                        svgPath: 'assets/svg/users.svg',
                        title: 'Candidates',
                        description: '222',
                        color: AppColors.kColorRed200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
