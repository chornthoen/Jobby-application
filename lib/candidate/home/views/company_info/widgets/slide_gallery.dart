import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/views/company_info/models/slide_model.dart';

import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class SlideGallery extends StatefulWidget {
  const SlideGallery({super.key});

  @override
  State<SlideGallery> createState() => _SlideGalleryState();
}

class _SlideGalleryState extends State<SlideGallery> {
  late CarouselController carouselController;

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
  }

  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: slideModel.length,
          carouselController: carouselController,
          itemBuilder: (context, index, realIndex) {
            return Container(
              width: width,
              height: height * 0.3,
              margin: const EdgeInsets.symmetric(
                vertical: AppSpacing.lg,
                horizontal: AppSpacing.sm,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSpacing.sm),
                image: DecorationImage(
                  image: AssetImage(slideModel[index].image),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: height * 0.2,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 1),
            onPageChanged: (index, reason) {
              setState(() {
                currentTab = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < slideModel.length; i++)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
                height: AppSpacing.xs,
                width: AppSpacing.xxxlg,
                decoration: BoxDecoration(
                  color: currentTab == i
                      ? AppColors.kBlackColor
                      : AppColors.kColorGray300,
                  borderRadius: BorderRadius.circular(AppSpacing.sm),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
