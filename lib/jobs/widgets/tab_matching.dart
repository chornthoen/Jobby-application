import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/home/widgets/item_hot_jobs.dart';
import 'package:jobby_application/jobs/models/matching_model.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class MatchingContent extends StatefulWidget {
  const MatchingContent({Key? key}) : super(key: key);

  @override
  State<MatchingContent> createState() => _MatchingContentState();
}

class _MatchingContentState extends State<MatchingContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 14,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 14,
          ),
          decoration:  BoxDecoration(
            color: AppColors.kOrange200Color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              const Image(
                image: AssetImage('assets/images/business.png'),
                width: 40,
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Your profile is 70% complete',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Complete your profile to',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kQuaternaryColor,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.kWhiteColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  PhosphorIcons.arrow_right,
                  color: AppColors.kPrimaryColor,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, bottom: 14, right: 16),
          child: Text(
            'Explore more',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.kBlackColor,
            ),
          ),
        ),
        ListView.builder(
          itemCount: matchingModel.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context,index){
            final model = matchingModel[index];
            return ItemHotJobs(
              title: model.title,
              name: model.name,
              image: model.image,
              salary: model.salary,
              time: model.time,
              role: model.role,
              date: model.date,
              color: model.color,
              isSaved: model.isSaved,
              onApply: (){},
              onSaved: (){
                setState(() {
                  model.isSaved = !model.isSaved;
                });
              },
            );
          },
        ),
      ],
    );
  }
}
