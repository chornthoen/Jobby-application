import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/item_detail_em.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/constant/constant.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.kPurple200Color,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Image(
                  image: AssetImage(
                    'assets/images/battery.png',
                  ),
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Job Title',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kQuaternaryColor,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Senior UI/UX Designer',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                Constant.description,
                style: const TextStyle(
                  color: AppColors.kQuaternaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: seeMore ? 100 : 6,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
              const Text(
                'Attachment',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(
                      color: AppColors.kSeptenaryColor,
                    ),
                  ),
                  focusColor: AppColors.kSeptenaryColor,
                  onTap: () {},
                  title: const Text(
                    'Job Description.pdf',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonOutLineAction(
                    text: 'Edit',
                    onPressed: () {},
                    width: MediaQuery.of(context).size.width * 0.35,
                  ),
                  ButtonAction(
                    width: MediaQuery.of(context).size.width * 0.35,
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
