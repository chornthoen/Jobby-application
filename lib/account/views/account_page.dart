import 'package:flutter/material.dart';
import 'package:jobby_application/account/widgets/body_info.dart';
import 'package:jobby_application/account/widgets/item_widget.dart';
import 'package:jobby_application/account/widgets/profile_info.dart';
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
                        color: AppColors.kPurple400Color,
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
                        child: ProfileInfo(),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ItemWidget(
                      svgPath: 'assets/svg/file-check.svg',
                      title: 'Applied',
                      description: '222',
                      color: AppColors.kGreen200Color,
                    ),
                    ItemWidget(
                      svgPath: 'assets/svg/message.svg',
                      title: 'Reviewed',
                      description: '222',
                      color: AppColors.kPurple200Color,
                    ),
                    ItemWidget(
                      svgPath: 'assets/svg/user-check.svg',
                      title: 'Connected',
                      description: '222',
                      color: AppColors.kRed200Color,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const BodyInfo(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


