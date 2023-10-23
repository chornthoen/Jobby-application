
import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/item_review.dart';

class ListReview extends StatelessWidget {
  const ListReview({super.key});

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
