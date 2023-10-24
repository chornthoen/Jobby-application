import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/candidate/home/models/trending_model.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: GridView.count(
          crossAxisCount: 2,
          physics: const BouncingScrollPhysics(),
          children: List.generate(
            listTrending.length,
            (index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.3,
                margin: const EdgeInsets.all(AppSpacing.md),
                padding: const EdgeInsets.all(AppSpacing.sm),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: listTrending[index].color,
                  borderRadius: BorderRadius.circular(AppSpacing.sm),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(AppSpacing.lg),
                      decoration: const BoxDecoration(
                        color: AppColors.kWhiteColor,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        listTrending[index].svgPath,
                        height: AppSpacing.xlg,
                        width: AppSpacing.xlg,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      listTrending[index].title,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeSemiBoldBlack,
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      listTrending[index].description,
                      style: CustomTextStyles.titleSmallMediumGray600,
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
