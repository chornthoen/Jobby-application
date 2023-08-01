import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/home/widgets/item_home_banner.dart';
import 'package:jobby_application/home/widgets/widget_slider.dart';
import 'package:jobby_application/jobs/widgets/tab_matching.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  static const String routePath = '/account-page';

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.kBackgroundColor,
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    color: AppColors.kBackgroundColor,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .25,
                      color: AppColors.kOrange400Color,
                    ),
                  ),

                  Positioned(
                    top: 24,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .28,
                      child: Image.asset(
                        'assets/images/bg_profile.png',
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .06,
                    left: 0,
                    right: 0,
                    child: InfoProfile(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .35,
                    left: 0,
                    right: 0,
                    child: SingleChildScrollView(child: BodyInfo()),
                  ),
                  //name(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ban extends StatelessWidget {
  const ban({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .22,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.kRedColor,
            borderRadius: BorderRadius.circular(12),
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
          top: -10,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .3,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            //color: AppColors.kBackgroundColor,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 46,
                  backgroundImage: AssetImage('assets/images/thoen.png'),
                ),
                const SizedBox(height: 10),
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
                  'Mobile Developer',
                  style: TextStyle(
                    color: AppColors.kQuaternaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ItemLike(
                        imagePath: 'assets/images/facebook_3d.png',
                      ),
                      ItemLike(
                        imagePath: 'assets/images/google_3d.png',
                      ),
                      ItemLike(
                        imagePath: 'assets/images/x.png',
                      ),
                      ItemLike(
                        imagePath: 'assets/images/youtube.png',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class name extends StatelessWidget {
  const name({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .12,
      left: 0,
      right: 0,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .3,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        //color: AppColors.kBackgroundColor,
        child: Column(
          children: [
            const CircleAvatar(
              radius: 46,
              backgroundImage: AssetImage('assets/images/thoen.png'),
            ),
            const SizedBox(height: 10),
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
              'Mobile Developer',
              style: TextStyle(
                color: AppColors.kQuaternaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ItemLike(
                    imagePath: 'assets/images/facebook_3d.png',
                  ),
                  ItemLike(
                    imagePath: 'assets/images/google_3d.png',
                  ),
                  ItemLike(
                    imagePath: 'assets/images/x.png',
                  ),
                  ItemLike(
                    imagePath: 'assets/images/youtube.png',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.svgPath,
    required this.title,
    required this.description,
    this.color,
  });

  final String svgPath;
  final String title;
  final String description;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            svgPath,
            width: 25,
            height: 25,
            color: AppColors.kPrimaryColor,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(
            color: AppColors.kQuaternaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          style: const TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class ItemLike extends StatelessWidget {
  const ItemLike({
    super.key,
    this.imagePath,
  });

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.kGray200,
        shape: BoxShape.circle,
      ),
      child: Image(
        image: AssetImage(imagePath!),
        width: 28,
        height: 28,
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .18,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .3,
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColors.kBlackColor.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .3,
          color: AppColors.kOrange400Color,
        ),
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .38,
            child: Image.asset(
              'assets/images/bg_profile.png',
            ),
          ),
        ),
      ],
    );
  }
}
