import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/candidate/home/widgets/item_home_banner.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class Profile extends StatelessWidget {
  const Profile({
    required this.name,
    required this.image,
    super.key,
    this.color,
  });

  final String name;
  final String image;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      height: height * 0.29,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: height * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSpacing.lg),
              color: AppColors.kWhiteColor,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.kColorGray200,
                  blurRadius: 2,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
          Positioned(
            top: AppSpacing.lg,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: AppSpacing.xxxlg * 2,
                      width: AppSpacing.xxxlg * 2,
                      padding: const EdgeInsets.all(AppSpacing.lg),
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                        border: const Border.fromBorderSide(
                          BorderSide(
                            color: AppColors.kWhiteColor,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Image(
                        image: AssetImage(image),
                        height: 35,
                        width: 35,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(AppSpacing.xxs),
                        decoration: const BoxDecoration(
                          color: AppColors.kWhiteColor,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          'assets/svg/verified.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: CustomTextStyles.headlineMediumSemiBold,
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    SvgPicture.asset(
                      'assets/svg/verified.svg',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSpacing.xxs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextRole(text: 'UX/UI design'),
                      TextRole(text: 'Senior Developer'),
                      TextRole(text: 'Web Developer'),
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
