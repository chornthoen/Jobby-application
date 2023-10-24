import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/models/ebook_model.dart';
import 'package:jobby_application/candidate/home/widgets/item_ebook.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class EbookDetailPage extends StatefulWidget {
  const EbookDetailPage({super.key});

  static const String routePath = '/ebookDetailPage';

  @override
  State<EbookDetailPage> createState() => _EbookDetailPageState();
}

class _EbookDetailPageState extends State<EbookDetailPage> {
  List<String> tabs = [
    'IT',
    'Software',
    'AI',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: CustomAppBar(
        icon1: PhosphorIcons.bookmark_simple,
        icon2: PhosphorIcons.share_network,
        onTap1: () {},
        onTap2: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: AppSpacing.md),
              height: 34,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: AppSpacing.lg),
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        this.index = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: AppSpacing.sm),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.lg,
                        vertical: AppSpacing.sm,
                      ),
                      decoration: BoxDecoration(
                        color: this.index == index
                            ? AppColors.kPrimaryColor
                            : AppColors.kColorGray200,
                        borderRadius: BorderRadius.circular(AppSpacing.xxlg),
                      ),
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          color: this.index == index
                              ? Colors.white
                              : AppColors.kColorGray600,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Performance evaluation review',
                    style: CustomTextStyles.bodyLargeSemiBoldBlack,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      const Icon(
                        PhosphorIcons.calendar_blank,
                        color: AppColors.kColorGray500,
                        size: AppSpacing.xlg - 2,
                      ),
                      const SizedBox(width: AppSpacing.xs),
                      Text(
                        '12/12/2021',
                        style: CustomTextStyles.titleMediumRegularGray500,
                      ),
                      const SizedBox(width: AppSpacing.lg),
                      SvgPicture.asset(
                        'assets/svg/user.svg',
                        height: AppSpacing.xlg - 2,
                        width: AppSpacing.xlg - 2,
                        color: AppColors.kColorGray500,
                      ),
                      const SizedBox(width: AppSpacing.xs),
                      Text(
                        'Chorn Thoen',
                        style: CustomTextStyles.titleMediumRegularGray500,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  const Image(
                    image: AssetImage('assets/images/event1.png'),
                    height: 180,
                    width: double.infinity,
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Text(
                    'Employee performance reviews, where managers evaluate '
                    'their staff’s overall performance, are vital for'
                    ' every business. However, the effectiveness of'
                    ' those sessions depends on how they are prepared'
                    ' and conducted.',
                    style: CustomTextStyles.titleMediumRegularGray600,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Icon(
                              PhosphorIcons.download_simple,
                              color: AppColors.kPrimaryColor,
                              size: AppSpacing.xlg,
                            ),
                            const SizedBox(width: AppSpacing.xs),
                            Text(
                              'Download',
                              style: CustomTextStyles.buttonMediumBlack,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Maybe you are interested',
                    style: CustomTextStyles.bodyLargeSemiBoldBlack,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  ListView.builder(
                    itemCount: listEBook.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final event = listEBook[index];
                      return ItemEbook(
                        image: event.image,
                        title: event.title,
                        date: event.date,
                        name: event.name,
                        isSaved: event.isSaved,
                        onPressed: () {
                          context.push(EbookDetailPage.routePath);
                        },
                        onSaved: () {
                          setState(() {
                            event.isSaved = !event.isSaved;
                          });
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
