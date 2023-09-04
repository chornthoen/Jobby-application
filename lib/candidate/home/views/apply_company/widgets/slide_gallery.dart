import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/views/apply_company/models/slide_model.dart';

import 'package:jobby_application/shared/colors/app_color.dart';

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
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: slideModel.length,
          carouselController: carouselController,
          itemBuilder: (context, index, realIndex) {
            return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                margin: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(slideModel[index].image),
                    fit: BoxFit.cover,
                  ),
                ),);
          },
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.2,
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
                margin: const EdgeInsets.symmetric(horizontal: 3),
                height: 2,
                width: 40,
                decoration: BoxDecoration(
                  color: currentTab == i
                      ? AppColors.kBlackColor
                      : AppColors.kSeptenaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
