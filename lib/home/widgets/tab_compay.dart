import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/home/models/hot_job_model.dart';
import 'package:jobby_application/home/models/tab_company_model.dart';
import 'package:jobby_application/home/views/apply_company/views/detail_company_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
class TabCompany extends StatelessWidget {
  const TabCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return  ItemCompany(
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
    super.key,
    required this.nameCompany,
    required this.location,
    required this.image,
    required this.totalJob,
    required this.status1,
    required this.status2,
    required this.status3,
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
        left: 16,
        right: 16,
        bottom: sizeBox ?? 14,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [AppColors.kBoxShadowColor,
          AppColors.kBoxShadowColor1
        ],
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
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          nameCompany,
                          style: const TextStyle(
                            fontSize: 18,
                            color: AppColors.kPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        SvgPicture.asset(
                          'assets/svg/verified.svg',
                          height: 16,
                          width: 16,
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(
                          PhosphorIcons.map_pin,
                          color: AppColors.kQuaternaryColor,
                          size: 18,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          location,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.kQuaternaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          PhosphorIcons.briefcase,
                          color: AppColors.kQuaternaryColor,
                          size: 18,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '${totalJob} jobs',
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.kQuaternaryColor,
                            fontWeight: FontWeight.w500,
                          ),
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
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.kGray100,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  status1,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.kQuaternaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.kGray100,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  status2,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.kQuaternaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.kGray100,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  status3,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.kQuaternaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: onApply,
                child: Row(
                  children: const [
                    Text(
                      'Apply Now',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      PhosphorIcons.arrow_right,
                      color: AppColors.kPrimaryColor,
                      size: 22,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

