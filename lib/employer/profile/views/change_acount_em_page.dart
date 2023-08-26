import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class ChangeAccountEmPage extends StatefulWidget {
  const ChangeAccountEmPage({super.key});

  static const String routePath = '/change_account_em_page';

  @override
  State<ChangeAccountEmPage> createState() => _ChangeAccountEmPageState();
}

class _ChangeAccountEmPageState extends State<ChangeAccountEmPage> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Change Account'),
      backgroundColor: AppColors.kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            actionAccount(
            1,
              'Chorn Thoen',
              'Mobile Developer',
              'assets/images/thoen.png',
              index == 1 ? true : false,
          ),
            actionAccount(
              2,
              'Rose',
              'UI Designer',
              'assets/images/rose.png',
              index == 2 ? true : false,

            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          bottom: 16,
          left: 16,
          right: 16,
        ),
        child: ButtonAction(
          isClick: true,
          text: 'Change Account',
          onPressed: () {
            context.go(ChangeAccountEmPage.routePath);
          },
        ),
      ),
    );
  }

  Widget actionAccount(
    int id,
    String title,
    String subtitle,
    String image,
    bool isActive,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          index = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            AppColors.kBoxShadowColor,
            AppColors.kBoxShadowColor1,
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(width: 10),
            Column(
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
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: AppColors.kQuaternaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Icon(
              PhosphorIcons.check_bold,
              color: isActive ? AppColors.kPrimaryColor : Colors.transparent,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
