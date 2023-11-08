import 'package:flutter/material.dart';
import 'package:jobby_application/employer/profile/widgets/body_info_em.dart';
import 'package:jobby_application/employer/profile/widgets/profile_info_em.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ProfileEmployerPage extends StatefulWidget {
  const ProfileEmployerPage({super.key});

  static const String routePath = '/profile_employer';

  @override
  State<ProfileEmployerPage> createState() => _ProfileEmployerPageState();
}

class _ProfileEmployerPageState extends State<ProfileEmployerPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.42,
                  child: Stack(
                    children: [
                      Container(
                        height: height * 0.28,
                        color: AppColors.kPrimaryColor,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(top: AppSpacing.xxxlg),
                        child: const Image(
                          image: AssetImage('assets/images/bg_profile.png'),
                          width: 200,
                          height: 200,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: ProfileInfoEmployer(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                const BodyInfoEmployer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
