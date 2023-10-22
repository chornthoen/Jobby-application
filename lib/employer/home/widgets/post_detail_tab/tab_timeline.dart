import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/employer/home/models/timeline_model.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/item_timeIine.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class TabTimeline extends StatefulWidget {
  const TabTimeline({super.key});

  @override
  State<TabTimeline> createState() => _TabTimelineState();
}

class _TabTimelineState extends State<TabTimeline> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  '12/May/2021',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kBlackColor,
                  ),
                ),
                const Spacer(),
                IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(
                    PhosphorIcons.caret_down_bold,
                    size: 20,
                    color: AppColors.kColorGray700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ListView.builder(
              itemCount: listTimeline.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ItemTimeline(
                  timePause: listTimeline[index].timePause,
                  timeShow: listTimeline[index].timeShow,
                  image: listTimeline[index].image,
                  name: listTimeline[index].name,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
