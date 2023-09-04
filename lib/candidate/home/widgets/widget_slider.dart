import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/widgets/item_home_banner.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/models/banner_home_model.dart';


class WidgetSlider extends StatefulWidget {
  const WidgetSlider({super.key});

  @override
  State<WidgetSlider> createState() => _WidgetSliderState();
}

class _WidgetSliderState extends State<WidgetSlider> {
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
          itemCount: listBanner.length,
          carouselController: carouselController,
          itemBuilder: (context, index, realIndex) {
            return  ItemHomeBanner(
              image: listBanner[index].image,
              title: listBanner[index].title,
              description: listBanner[index].description,
              onPressed: () {},
            );
          },
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.2,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval:const   Duration(seconds: 7),
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
            for (int i = 0; i < listBanner.length; i++)
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
