import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/views/company_info/models/interested_model.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/item_interested.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/slide_gallery.dart';
import 'package:jobby_application/candidate/home/widgets/item_speaker_list.dart';
import 'package:jobby_application/shared/colors/app_color.dart';


class TabOverview extends StatefulWidget {
  const TabOverview({super.key});

  @override
  State<TabOverview> createState() => _TabOverviewState();
}

class _TabOverviewState extends State<TabOverview> {
  bool follow = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const ItemDetail(
          svg: 'assets/svg/world.svg',
          label: 'Website:',
          value: 'chornthoen.com',
        ),
        const ItemDetail(
          svg: 'assets/svg/jobs.svg',
          label: 'Industry:',
          value: 'Mobile Developer',
        ),
        const ItemDetail(
          svg: 'assets/svg/users.svg',
          label: 'People:',
          value: 'More than 1000 people',
        ),
        const ItemDetail(
          svg: 'assets/svg/location.svg',
          label: 'Location:',
          value: 'Phnom Penh',
        ),
        const ItemDetail(
          svg: 'assets/svg/building.svg',
          label: 'Company:',
          value:
          'The 4.0 revolution makes the term artificial intelligence no '
              'longer strange to everyone, no matter what field you are in.'
              ' The use of AI in recruitment has been and is the mainstream'
              ' in the future with undeniable benefits for both employers and'
              ' candidates.',
        ),
        const Text(
          'Gallery',
          style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SlideGallery(),
        const SizedBox(height: 10),
        const Text(
          'Maybe you are interested',
          style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        ListView.builder(
          itemCount: interestedModel.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
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
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
