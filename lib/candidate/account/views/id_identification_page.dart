import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/account/models/card_model.dart';
import 'package:jobby_application/candidate/account/views/id_identification_detail_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class IDIdentificationPage extends StatefulWidget {
  const IDIdentificationPage({super.key});

  static const String routePath = '/id_identification_page';

  @override
  State<IDIdentificationPage> createState() => _IDIdentificationPageState();
}

class _IDIdentificationPageState extends State<IDIdentificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'ID Identification'),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/id.svg',
                  width: AppSpacing.xxlg,
                  height: AppSpacing.xxlg,
                  color: AppColors.kPrimaryColor,
                ),
                const SizedBox(width: AppSpacing.sm),
                const Text(
                  'Select your ID type',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            const Text(
              'Please select your ID type to continue the registration process',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.kColorGray600,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            ListView.builder(
              itemCount: cardModel.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: cardModel[index].color,
                    borderRadius: BorderRadius.circular(AppSpacing.sm),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                    vertical: AppSpacing.sm,
                  ),
                  margin: const EdgeInsets.only(top: AppSpacing.lg),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(cardModel[index].image),
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Text(
                        cardModel[index].title,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kBlackColor,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          context.push(
                            IDIdentificationDetailPage.routePath,
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.md,
                            vertical: AppSpacing.sm,
                          ),
                          decoration: const BoxDecoration(
                            color: AppColors.kWhiteColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            PhosphorIcons.arrow_right,
                            color: AppColors.kPrimaryColor,
                            size: AppSpacing.xlg,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
