
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/widgets/item_card.dart';
import 'package:jobby_application/authentication/signin/views/sign_in_page.dart';
import 'package:jobby_application/employer/profile/models/list_setting_em_model.dart';
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
