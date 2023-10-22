import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/candidate/home/models/trending_model.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class TrendingSeeAllPage extends StatefulWidget {
  const TrendingSeeAllPage({super.key});

  static const String routePath = '/trendingSeeAllPage';

  @override
  State<TrendingSeeAllPage> createState() => _TrendingSeeAllPageState();
}

class _TrendingSeeAllPageState extends State<TrendingSeeAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(
        title: 'Trending now',
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            listTrending.length,
            (index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.3,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: listTrending[index].color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: AppColors.kWhiteColor,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        listTrending[index].svgPath,
                        height: 16,
                        width: 16,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      listTrending[index].title,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      listTrending[index].description,
                      style: const TextStyle(
                        color: AppColors.kColorGray600,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
