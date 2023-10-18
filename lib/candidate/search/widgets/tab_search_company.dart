import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/views/company_info/models/interested_model.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/item_interested.dart';
class TabSearchCompany extends StatefulWidget {
  const TabSearchCompany({super.key});

  @override
  State<TabSearchCompany> createState() => _TabSearchCompanyState();
}

class _TabSearchCompanyState extends State<TabSearchCompany> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: interestedModel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        final item = interestedModel[index];
        return ItemInterested(
          image: item.image,
          nameCompany: item.name,
          location: item.location,
          follow: item.isFollow,
          isFollow: () {
            setState(() {
              item.isFollow = !item.isFollow;
            });
          },
        );
      },
    );
  }
}
