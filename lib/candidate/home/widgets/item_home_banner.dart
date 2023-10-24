import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemHomeBanner extends StatelessWidget {
  const ItemHomeBanner({
    required this.image,
    required this.title,
    required this.description,
    super.key,
    this.onPressed,
  });

  final String image;
  final String title;
  final String description;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      height: height * 0.4,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: height * 0.16,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSpacing.xlg),
              image: const DecorationImage(
                image: AssetImage('assets/images/background_banner.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  height: 145,
                  width: 184,
                  image: AssetImage('assets/images/woman.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.xlg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: CustomTextStyles.headlineSmallBold,
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        description,
                        style: CustomTextStyles.titleMediumRegularGray600,
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      GestureDetector(
                        onTap: onPressed,
                        child: Container(
                          height: 40,
                          width: 124,
                          decoration: BoxDecoration(
                            color: AppColors.kPrimaryColor,
                            borderRadius: BorderRadius.circular(AppSpacing.sm),
                          ),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Join Now',
                                style: CustomTextStyles.buttonMediumWhite,
                              ),
                              const SizedBox(width: AppSpacing.xs),
                              const Icon(
                                PhosphorIcons.arrow_right_bold,
                                color: AppColors.kWhiteColor,
                                size: AppSpacing.lg + 2,
                              ),
                            ],
                          ),
                        ),
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

class InfoProfile extends StatelessWidget {
  const InfoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.29,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
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
            top: 16,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: AppColors.kColorBlue200,
                        shape: BoxShape.circle,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: AppColors.kWhiteColor,
                            width: 2,
                          ),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('assets/images/business.png'),
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(2),
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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Business Analyst',
                      style: TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset(
                      'assets/svg/verified.svg',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 26),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
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

class TextRole extends StatelessWidget {
  const TextRole({
    required this.text, super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: AppColors.kColorGray100,
        borderRadius: BorderRadius.circular(AppSpacing.md),
      ),
      child: Text(
        text,
        style: CustomTextStyles.titleSmallMediumGray600,
      ),
    );
  }
}
