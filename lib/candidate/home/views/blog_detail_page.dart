import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/models/blog_model.dart';
import 'package:jobby_application/candidate/home/widgets/item_blog.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
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
              margin: const EdgeInsets.only(top: AppSpacing.sm),
              height: AppSpacing.xxlg,
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
                    'Market Insight – See salary, understand your favorite '
                    'job position',
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
                      const SizedBox(width: AppSpacing.xlg),
                      const Icon(
                        PhosphorIcons.clock,
                        color: AppColors.kColorGray500,
                        size: AppSpacing.xlg - 2,
                      ),
                      const SizedBox(width: AppSpacing.xs),
                      Text(
                        '12 mins read',
                        style: CustomTextStyles.titleMediumRegularGray500,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xlg),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSpacing.sm),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/blog1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Text(
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
                    style: CustomTextStyles.titleMediumRegularGray600,
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Text(
                    'Maybe you are interested',
                    style: CustomTextStyles.headlineSmallBold,
                  ),
                  const SizedBox(height: AppSpacing.sm),
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
                        onPressed: () => context.push(BlogDetailPage.routePath),
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
