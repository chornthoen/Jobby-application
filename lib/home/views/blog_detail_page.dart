import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/home/models/blog_model.dart';
import 'package:jobby_application/home/widgets/item_blog.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class BlogDetailPage extends StatefulWidget {
  const BlogDetailPage({super.key});

  static const String routePath = '/blogDetailPage';

  @override
  State<BlogDetailPage> createState() => _BlogDetailPageState();
}

class _BlogDetailPageState extends State<BlogDetailPage> {
  List<String> tabs = [
    'IT',
    'Software',
    'AI',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Market Insight – See salary, understand your favorite '
                        'job position',
                    style: TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(
                        PhosphorIcons.calendar_blank,
                        color: AppColors.kQuinaryColor,
                        size: 22,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '12/12/2021',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kQuinaryColor,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        PhosphorIcons.clock,
                        color: AppColors.kQuinaryColor,
                        size: 22,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '12 mins read',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kQuinaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/blog1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Digital transformation is the process of '
                        'using digital technologies to create new — or modify '
                        'existing — business processes, culture, and customer '
                        'experiences to meet changing business and market '
                        'requirements. With digital transformation, companies'
                        ' are taking a step back and revisiting everything '
                        'they do, from internal systems to customer '
                        'interactions both online and in person. They’re '
                        'asking big questions like “Can we change our processes'
                        ' in a way that will enable better decision-making,'
                        ' game-changing efficiencies, or a better customer '
                        'experience with more personalization?”',
                    style: TextStyle(
                      color: AppColors.kQuaternaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
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
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final blog = listBlog[index];
                      return ItemBlog(
                        image: blog.image,
                        title: blog.title,
                        read: blog.readTime,
                        date: blog.date,
                        isBookmark: blog.isSaved,
                        onPressed: () {
                          context.push(BlogDetailPage.routePath);
                        },
                        onBookmark: () {
                          setState(() {
                            blog.isSaved = !blog.isSaved;
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
