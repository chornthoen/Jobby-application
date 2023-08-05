import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class YourJobbyProfilePage extends StatefulWidget {
  const YourJobbyProfilePage({Key? key}) : super(key: key);

  static const String routePath = '/your_jobby_profile_page';

  @override
  State<YourJobbyProfilePage> createState() => _YourJobbyProfilePageState();
}

class _YourJobbyProfilePageState extends State<YourJobbyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'Your Jobby Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CoverAndProfile(
              imageCover: 'assets/images/bg_profile.png',
              imageProfile: 'assets/images/thoen.png',
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.kWhiteColor,
                      boxShadow: [
                        AppColors.kBoxShadowColor,
                        AppColors.kBoxShadowColor1
                      ],
                    ),
                    child: Column(
                      children: [
                        TextLabelAndButton(
                          text: 'Chorn Thoen',
                          icon: PhosphorIcons.pencil_simple,
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        const IconAndText(
                          svg: 'assets/svg/jobs.svg',
                          text: 'Mobile Developer',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/call.svg',
                          text: '069 997 502',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/email.svg',
                          text: 'thoenchorn@gmail.com',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/gender-male.svg',
                          text: 'Male',
                        ),const IconAndText(
                          svg: 'assets/svg/location.svg',
                          text: 'Phnom Penh',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/world.svg',
                          text: 'www.thoenchorn.com',
                        ),


                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconAndText extends StatelessWidget {
  const IconAndText({
    super.key,
    required this.svg,
    required this.text,
  });
  final String svg;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SvgPicture.asset(
            svg,
            width: 22,
            height: 22,
            color: AppColors.kQuaternaryColor,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const  TextStyle(
              color: AppColors.kQuaternaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class TextLabelAndButton extends StatelessWidget {
  const TextLabelAndButton({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });
  final String text;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Icon(
          icon,
          color: AppColors.kPrimaryColor,
          size: 24,
        ),
      ],
    );
  }
}

class CoverAndProfile extends StatelessWidget {
  const CoverAndProfile({
    super.key,
    required this.imageCover,
    required this.imageProfile,
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
