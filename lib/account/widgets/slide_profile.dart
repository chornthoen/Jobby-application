import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jobby_application/account/models/slide_model_.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_widget.dart';

class SlideProfiles extends StatefulWidget {
  const SlideProfiles({super.key});

  @override
  State<SlideProfiles> createState() => _SlideProfilesState();
}

class _SlideProfilesState extends State<SlideProfiles> {
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
          itemCount: sliderProfile.length,
          carouselController: carouselController,
          itemBuilder: (context, index, realIndex) {
            return  CustomWidget(
              image: sliderProfile[index].image,
              title: sliderProfile[index].title,
              description: sliderProfile[index].subtitle,
              color: sliderProfile[index].color,
              onTap: (){
              },
            );
          },
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.12,
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
            for (int i = 0; i < sliderProfile.length; i++)
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
