import 'package:flutter/material.dart';
import 'package:jobby_application/account/models/status_model.dart';
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
                        color: AppColors.kOrange400Color,
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
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: ListView.builder(
                    itemCount: statusModel.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final model = statusModel[index];
                      return ItemWidget(
                        svgPath: model.svgUrl,
                        title: model.title,
                        description: model.description,
                        color: model.color,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 26),
                const BodyInfo(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


