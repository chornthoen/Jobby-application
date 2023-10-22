
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';


class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({
    required this.name, super.key,
    this.imageProfile = 'assets/images/profile_null.png',
    this.diamond = '',
    this.onProfile,
    this.onNotification,
    this.onSearch,
    this.isEmployer = false,

  });

  final String imageProfile;
  final String name;
  final String? diamond;
  final VoidCallback? onProfile;
  final VoidCallback? onNotification;
  final VoidCallback? onSearch;
  final bool? isEmployer;

  @override
  Size get preferredSize => const Size.fromHeight(80);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.099,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      backgroundColor: AppColors.kWhiteColor,
      elevation: 1,
      shadowColor: AppColors.kWhiteColor,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          GestureDetector(
            onTap: onProfile,
            child: CircleAvatar(
              backgroundColor: AppColors.kWhiteColor,
              backgroundImage: AssetImage(imageProfile),
              radius: 28,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 16,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                  const SizedBox(width: 3),
                  SvgPicture.asset(
                    'assets/svg/verified.svg',
                    width: 16,
                    height: 16,
                    color: AppColors.kOrangeColor400,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: AppColors.kColorGray200),
                ),
                child: Row(
                  children: [
                    Text(
                      diamond!,
                      style: const TextStyle(
                        color: AppColors.kColorGray500,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/svg/diamond-color.svg',
                      width: 18,
                      height: 18,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              if (isEmployer == false)
                GestureDetector(
                  onTap: onSearch,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: AppColors.kWhiteColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.kColorGray100,
                          blurRadius: 10,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        PhosphorIcons.magnifying_glass,
                        color: AppColors.kColorGray600,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: onNotification,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: AppColors.kWhiteColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.kColorGray100,
                        blurRadius: 10,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        const Icon(
                          PhosphorIcons.bell,
                          color: AppColors.kColorGray600,
                          size: 28,
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 11,
                            height: 11,
                            decoration: BoxDecoration(
                              color: AppColors.kColorRed400,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.kWhiteColor,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
