import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/home/views/apply_company/widgets/item_review.dart';
import 'package:jobby_application/home/views/apply_company/widgets/star_rate.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';

class TabReviews extends StatefulWidget {
  const TabReviews({Key? key}) : super(key: key);

  @override
  State<TabReviews> createState() => _TabReviewsState();
}

class _TabReviewsState extends State<TabReviews> {

  bool isNext = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: AppColors.kWhiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Row(
                        children: const [
                          Text(
                            '4.5',
                            style: TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontSize: 50,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(
                            PhosphorIcons.star_fill,
                            color: AppColors.kOrange400Color,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  ),
                  const Text(
                    '100 reviews',
                    style: TextStyle(
                      color: AppColors.kQuaternaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: const [
                    StarRate(
                      leading: '5 star',
                      trailing: '244',
                      percent: 0.8,
                    ),
                    StarRate(
                      leading: '4 star',
                      trailing: '244',
                      percent: 0.7,
                    ),
                    StarRate(
                      leading: '3 star',
                      trailing: '244',
                      percent: 0.5,
                    ),
                    StarRate(
                      leading: '2 star',
                      trailing: '244',
                      percent: 0.3,
                    ),
                    StarRate(
                      leading: '1 star',
                      trailing: '244',
                      percent: 0.1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ButtonOutLineAction(
            text: 'Write a review',
            onPressed: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Reviews',
                style: TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 10),
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    isNext = !isNext;
                    print(isNext);
                  });
                },
                label: const Text(
                  'Newest',
                  style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                icon:  Icon(
                  isNext ? PhosphorIcons.caret_up : PhosphorIcons.caret_down,
                  color: AppColors.kPrimaryColor,
                  size: 20,
                ),
              ),
            ],
          ),
          if (isNext)
            const ListReview(),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}

class ListReview extends StatelessWidget {
  const ListReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const ItemReviews();
      },
    );
  }
}
