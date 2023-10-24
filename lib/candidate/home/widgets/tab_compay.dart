import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/models/hot_job_model.dart';
import 'package:jobby_application/candidate/home/models/tab_company_model.dart';
import 'package:jobby_application/candidate/home/views/company_info/views/detail_company_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class TabCompany extends StatelessWidget {
  const TabCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return ItemCompany(
          sizeBox: index == hotJobModel.length - 1 ? 0 : 14,
          nameCompany: tabCompanyModel[index].nameCompany,
          location: tabCompanyModel[index].locationCompany,
          image: tabCompanyModel[index].imageCompany,
          totalJob: tabCompanyModel[index].totalJob,
          status1: tabCompanyModel[index].status1,
          status2: tabCompanyModel[index].status2,
          status3: tabCompanyModel[index].status3,
          onApply: () {
            context.push(DetailCompanyPage.routePath);
          },
          onPressed: () {
            context.push(DetailCompanyPage.routePath);
          },
        );
      },
    );
  }
}

class ItemCompany extends StatelessWidget {
  const ItemCompany({
    required this.nameCompany,
    required this.location,
    required this.image,
    required this.totalJob,
    required this.status1,
    required this.status2,
    required this.status3,
    super.key,
    this.onApply,
    this.sizeBox = 14,
    this.onPressed,
  });

  final String nameCompany;
  final String location;
  final String image;
  final String totalJob;
  final String status1;
  final String status2;
  final String status3;
  final VoidCallback? onApply;
  final double? sizeBox;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: AppSpacing.lg,
        right: AppSpacing.lg,
        bottom: sizeBox ?? 14,
      ),
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(AppSpacing.sm),
        boxShadow: [AppColors.kBoxShadowColor, AppColors.kBoxShadowColor1],
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: AppColors.kBlackColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image(
                    image: AssetImage(image),
                    height: 40,
                    width: 40,
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          nameCompany,
                          style: CustomTextStyles.bodyLargeSemiBoldBlack,
                        ),
                        const SizedBox(width: AppSpacing.xs),
                        SvgPicture.asset(
                          'assets/svg/verified.svg',
                          height: 16,
                          width: 16,
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Row(
                      children: [
                        const Icon(
                          PhosphorIcons.map_pin,
                          color: AppColors.kColorGray600,
                          size: AppSpacing.lg,
                        ),
                        const SizedBox(width: AppSpacing.xs),
                        Text(
                          location,
                          style: CustomTextStyles.titleSmallMediumGray600,
                        ),
                        const SizedBox(width: AppSpacing.md),
                        const Icon(
                          PhosphorIcons.briefcase,
                          color: AppColors.kColorGray600,
                          size: AppSpacing.lg,
                        ),
                        const SizedBox(width: AppSpacing.xs),
                        Text(
                          '$totalJob jobs',
                          style: CustomTextStyles.titleSmallMediumGray600,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: AppColors.kColorGray100,
                  borderRadius: BorderRadius.circular(AppSpacing.sm),
                ),
                child: Text(
                  status1,
                  style: CustomTextStyles.bodySmallMediumGray600,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: AppColors.kColorGray100,
                  borderRadius: BorderRadius.circular(AppSpacing.sm),
                ),
                child: Text(
                  status2,
                  style: CustomTextStyles.bodySmallMediumGray600,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: AppColors.kColorGray100,
                  borderRadius: BorderRadius.circular(AppSpacing.sm),
                ),
                child: Text(
                  status3,
                  style: CustomTextStyles.bodySmallMediumGray600,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: onApply,
                child:  Row(
                  children: [
                    Text(
                      'Apply Now',
                      style: CustomTextStyles.buttonTitleSmallSemiBoldBlack,
                    ),
                    const SizedBox(width: AppSpacing.xxs),
                    const Icon(
                      PhosphorIcons.arrow_right,
                      color: AppColors.kPrimaryColor,
                      size: AppSpacing.xlg-4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
