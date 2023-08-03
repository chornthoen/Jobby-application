import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/home/models/ebook_model.dart';
import 'package:jobby_application/home/widgets/item_ebook.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class EbookDetailPage extends StatefulWidget {
  const EbookDetailPage({Key? key}) : super(key: key);

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
        onBookmarkTap: () {},
        onShareTap: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 34,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16),
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
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: this.index == index
                            ? AppColors.kPrimaryColor
                            : AppColors.kGray200,
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          color: this.index == index
                              ? Colors.white
                              : AppColors.kQuaternaryColor,
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Perfomance evaluation review',
                    style: TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        PhosphorIcons.calendar_blank,
                        color: AppColors.kQuinaryColor,
                        size: 22,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '12/12/2021',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kQuinaryColor,
                        ),
                      ),
                      const SizedBox(width: 20),
                      SvgPicture.asset(
                        'assets/svg/user.svg',
                        height: 22,
                        width: 22,
                        color: AppColors.kQuinaryColor,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Chorn Thoen',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kQuinaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Image(
                    image: AssetImage('assets/images/event1.png'),
                    height: 180,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Employee performance reviews, where managers evaluate their staff’s overall performance, are vital for every business. However, the effectiveness of those sessions depends on how they are prepared and conducted.',
                    style: TextStyle(
                      color: AppColors.kQuaternaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              PhosphorIcons.download_simple,
                              color: AppColors.kPrimaryColor,
                              size: 24,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Download',
                              style: TextStyle(
                                color: AppColors.kPrimaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Maybe you are interested',
                    style: TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
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
            )
          ],
        ),
      ),
    );
  }
}
