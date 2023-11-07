import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class CoverAndProfile extends StatelessWidget {
  const CoverAndProfile({
    required this.imageCover, required this.imageProfile, super.key,
  });

  final String imageCover;
  final String imageProfile;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.25,
      child: Stack(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: height * 0.2,
                  alignment: Alignment.topCenter,
                  color: AppColors.kOrangeColor400,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: AppSpacing.sm),
                  height: 170,
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage('assets/images/bg_profile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: AppSpacing.lg,
                bottom: 56,
                child: Container(
                  padding: const EdgeInsets.all(AppSpacing.sm),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: AppColors.kWhiteColor,
                    size: AppSpacing.xlg,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.xxs),
              decoration: const BoxDecoration(
                color: AppColors.kWhiteColor,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 46,
                backgroundImage: const AssetImage('assets/images/thoen.png'),
                child: Container(
                  padding: const EdgeInsets.all(AppSpacing.xxxlg),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: AppColors.kWhiteColor,
                    size: AppSpacing.xlg - 4,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
