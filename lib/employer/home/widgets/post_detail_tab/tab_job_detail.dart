import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/item_detail_em.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/constant/constant.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';

class TabJobDetail extends StatefulWidget {
  const TabJobDetail({super.key});

  @override
  State<TabJobDetail> createState() => _TabJobDetailState();
}

class _TabJobDetailState extends State<TabJobDetail> {
  bool seeMore = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.kPurpleColor200,
                  borderRadius: BorderRadius.circular(AppSpacing.sm),
                ),
                child: const Image(
                  image: AssetImage(
                    'assets/images/battery.png',
                  ),
                  height: AppSpacing.xxxlg,
                  width: AppSpacing.xxxlg,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              const Text(
                'Job Title',
                style: TextStyle(
                  fontSize: AppSpacing.lg,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kColorGray600,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              const Text(
                'Senior UI/UX Designer',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.kBlackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              const ItemDetailEm(
                label: 'Date Created',
                value: '12/12/2021',
              ),
              const ItemDetailEm(
                label: 'Expired Date',
                value: '12/12/2024',
              ),
              const ItemDetailEm(
                label: 'Hiring Manager',
                value: 'Donny',
              ),
              const ItemDetailEm(
                label: 'Team',
                value: 'Product Designer',
              ),
              const ItemDetailEm(
                label: 'Job Type',
                value: 'Full Time',
              ),
              const ItemDetailEm(
                label: 'Experience',
                value: '3 Years',
              ),
              const ItemDetailEm(
                label: 'Location',
                value: 'Phnom Penh',
              ),
              const ItemDetailEm(
                label: 'Salary',
                value: r'1k$',
              ),
              const ItemDetailEm(
                label: 'Skills',
                value: 'UI/UX Design, Figma, Adobe XD, Adobe Photoshop',
              ),
              const SizedBox(height: AppSpacing.sm),
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.kBlackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                Constant.description,
                style: const TextStyle(
                  color: AppColors.kColorGray600,
                  fontSize: AppSpacing.lg,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: seeMore ? 100 : 6,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: AppSpacing.sm),
              Center(
                child: ButtonOutLineAction(
                  width: 130,
                  height: 40,
                  text: seeMore ? 'See Less' : 'See More',
                  onPressed: () {
                    setState(() {
                      seeMore = !seeMore;
                    });
                  },
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              const Text(
                'Attachment',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.kBlackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              SizedBox(
                width: double.infinity,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSpacing.sm),
                    side: const BorderSide(
                      color: AppColors.kColorGray300,
                    ),
                  ),
                  focusColor: AppColors.kColorGray300,
                  onTap: () {},
                  title: const Text(
                    'Job Description.pdf',
                    style: TextStyle(
                      fontSize: AppSpacing.lg,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonOutLineAction(
                    text: 'Edit',
                    onPressed: () {},
                    width: width * 0.35,
                  ),
                  CustomElevatedButton(
                    width: width * 0.35,
                    text: 'Publish',
                    icon: PhosphorIcons.caret_down,
                    isClick: true,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
