import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/models/setting_model.dart';
import 'package:jobby_application/account/widgets/item_card.dart';
import 'package:jobby_application/account/widgets/item_widget.dart';
import 'package:jobby_application/employer/profile/views/about_jobby_em_page.dart';
import 'package:jobby_application/employer/profile/views/account_setting_em_page.dart';
import 'package:jobby_application/employer/profile/views/change_acount_em_page.dart';
import 'package:jobby_application/employer/profile/views/company_profile_page.dart';
import 'package:jobby_application/employer/profile/views/id_identification_em_page.dart';
import 'package:jobby_application/employer/profile/views/member_em_page.dart';
import 'package:jobby_application/employer/profile/views/service_packages_em_page.dart';
import 'package:jobby_application/employer/profile/views/share_with_your_friend_em_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/signin/views/sign_in_page.dart';

class ProfileEmployerPage extends StatefulWidget {
  const ProfileEmployerPage({Key? key}) : super(key: key);

  static const String routePath = '/profile_employer';

  @override
  State<ProfileEmployerPage> createState() => _ProfileEmployerPageState();
}

class _ProfileEmployerPageState extends State<ProfileEmployerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.42,
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        color: AppColors.kPrimaryColor,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(top: 40),
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
                const SizedBox(height: 20),
                const BodyInfoEmployer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BodyInfoEmployer extends StatefulWidget {
  const BodyInfoEmployer({
    super.key,
  });

  @override
  State<BodyInfoEmployer> createState() => _BodyInfoEmployerState();
}

class _BodyInfoEmployerState extends State<BodyInfoEmployer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kWhiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            itemCount: listSettingEmployer.length,
            itemBuilder: (context, index) {
              final item = listSettingEmployer[index];
              return ItemCard(
                title: item.title,
                icon: item.icon,
                onPressed: () {
                  switch (item.id) {
                    case 1:
                      context.push(CompanyProfilePage.routePath);
                      break;
                    case 2:
                      context.push(ChangeAccountEmPage.routePath);
                      break;
                    case 3:
                      context.push(MemberEmPage.routePath);
                      break;
                    case 4:
                      context.push(ServicePackageEmPage.routePath);
                      break;
                    case 5:
                      context.push(IDIdentificationEmPage.routePath);
                      break;
                    case 6:
                      context.push(ShareWithYourFriendEmPage.routePath);
                      break;
                    case 7:
                      context.push(AccountSettingEmPage.routePath);
                      break;
                    case 8:
                      context.push(AboutJobbyEmPage.routePath);
                      break;
                    case 9:
                      _showBottomSheetLogout(context);
                      break;
                    default:
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }

  //show dialog logout
  void _showBottomSheetLogout(BuildContext context) {
    BottomSheets.showBottomSheetCustom(
      context: context,
      title: 'LOG OUT ACCOUNT',
      image: 'assets/images/enter.png',
      description:
          'Are you sure you want to log out? You can always log back in.',
      textButton: 'Log out',
      onPressed: () {
        setState(() {
          context.go(SignInPage.routePath);
        });
      },
    );
  }
}

class ProfileInfoEmployer extends StatelessWidget {
  const ProfileInfoEmployer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.34,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.26,
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
                    backgroundImage: AssetImage('assets/images/thoen.png'),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
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
