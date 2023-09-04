import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class CoverAndProfile extends StatelessWidget {
  const CoverAndProfile({
    required this.imageCover, required this.imageProfile, super.key,
  });

  final String imageCover;
  final String imageProfile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
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
                  height: MediaQuery.of(context).size.height * 0.2,
                  alignment: Alignment.topCenter,
                  color: AppColors.kOrange400Color,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 10),
                  height: 170,
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage('assets/images/bg_profile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 16,
                bottom: 56,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: AppColors.kWhiteColor,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: AppColors.kWhiteColor,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 46,
                backgroundImage: const AssetImage('assets/images/thoen.png'),
                child: Container(
                  padding: const EdgeInsets.all(38),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: AppColors.kWhiteColor,
                    size: 20,
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
