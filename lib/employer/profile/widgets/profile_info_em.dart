import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/candidate/account/widgets/item_widget.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ProfileInfoEmployer extends StatelessWidget {
  const ProfileInfoEmployer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.36,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.265,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.kWhiteColor,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.kGray200,
                  blurRadius: 2,
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
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: AppColors.kWhiteColor,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 46,
                    backgroundImage: AssetImage('assets/images/rose.png'),
                  ),
                ),
                const SizedBox(height: 8),
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
                    const SizedBox(width: 5),
                    SvgPicture.asset(
                      'assets/svg/verified.svg',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                  'Technologies',
                  style: TextStyle(
                    color: AppColors.kQuaternaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ItemWidget(
                        svgPath: 'assets/svg/jobs.svg',
                        title: 'Total Jobs',
                        description: '222',
                        color: AppColors.kGreen200Color,
                      ),
                      ItemWidget(
                        svgPath: 'assets/svg/eye.svg',
                        title: 'Job Viewed',
                        description: '222',
                        color: AppColors.kPurple200Color,
                      ),
                      ItemWidget(
                        svgPath: 'assets/svg/users.svg',
                        title: 'Candidates',
                        description: '222',
                        color: AppColors.kRed200Color,
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
