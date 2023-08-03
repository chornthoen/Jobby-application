import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/account/models/setting_model.dart';
import 'package:jobby_application/account/views/account_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemHomeBanner extends StatelessWidget {
  const ItemHomeBanner({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.onPressed,
  });
  final String image;
  final String title;
  final String description;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image:
                AssetImage('assets/images/background_banner.png'),
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
                  height: 154,
                  width: 180,
                  image: AssetImage('assets/images/woman.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: AppColors.kPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: const TextStyle(
                          color: AppColors.kQuaternaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: onPressed,
                        child: Container(
                          height: 40,
                          width: 124,
                          decoration: BoxDecoration(
                            color: AppColors.kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Join Now',
                                style: TextStyle(
                                  color: AppColors.kWhiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                PhosphorIcons.arrow_right_bold,
                                color: AppColors.kWhiteColor,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      )
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
  const InfoProfile({Key? key}) : super(key: key);

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
              boxShadow: [
                const BoxShadow(
                  color: AppColors.kGray200,
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
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: AppColors.kWhiteColor,
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        backgroundColor: AppColors.kWhiteColor,
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/thoen.png'),
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
                    )
                  ],
                ),
                const SizedBox(height: 20),
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
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      TextRole(text: 'UX/UI design'),
                      TextRole(text: 'Senior Developer'),
                      TextRole(text: 'Web Developer'),

                    ],
                  ),
                )
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
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: AppColors.kGray100,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.kQuaternaryColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class BodyInfo extends StatelessWidget {
  const BodyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kWhiteColor,
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
            'General Information',
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: listSetting.length,
            itemBuilder: (context, index) {
              final item = listSetting[index];
              return  ItemCard(
                title: item.title,
                icon: item.icon,
                onPressed: () {
                },
              );
            },
          ),
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                const BoxShadow(
                  color: AppColors.kGray200,
                  blurRadius: 2,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  PhosphorIcons.sign_out,
                  color: AppColors.kRedColor,
                  size: 24,
                ),
                const SizedBox(width: 10),
                Text(
                  'Logout',
                  style: TextStyle(
                    color: AppColors.kRedColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });
  final String title;
  final String icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        minVerticalPadding: 0,
        contentPadding: const EdgeInsets.only(
          left: 12,
          right: 4,
        ),
        onTap: onPressed,
        title: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 25,
              height: 25,
              color: AppColors.kQuaternaryColor,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.kQuaternaryColor,
          size: 20,
        ),
      ),
    );
  }
}

