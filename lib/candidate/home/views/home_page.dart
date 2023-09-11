import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/models/company_for_you_model.dart';
import 'package:jobby_application/candidate/home/models/explore_models.dart';
import 'package:jobby_application/candidate/home/models/hot_job_model.dart';
import 'package:jobby_application/candidate/home/models/trending_model.dart';
import 'package:jobby_application/candidate/home/views/apply_company/views/detail_company_page.dart';
import 'package:jobby_application/candidate/home/views/apply_now/views/apply_now_page.dart';
import 'package:jobby_application/candidate/home/views/blogs_page.dart';
import 'package:jobby_application/candidate/home/views/company_see_all_page.dart';
import 'package:jobby_application/candidate/home/views/ebook_page.dart';
import 'package:jobby_application/candidate/home/views/event_page.dart';
import 'package:jobby_application/candidate/home/views/hot_job_see_all_page.dart';
import 'package:jobby_application/candidate/home/views/trending_see_all_page.dart';
import 'package:jobby_application/candidate/home/widgets/app_bar_home.dart';
import 'package:jobby_application/candidate/home/widgets/competitive_salary_widget.dart';
import 'package:jobby_application/candidate/home/widgets/itemCompany.dart';
import 'package:jobby_application/candidate/home/widgets/itemExploreMore.dart';
import 'package:jobby_application/candidate/home/widgets/item_hot_jobs.dart';
import 'package:jobby_application/candidate/home/widgets/item_trending.dart';
import 'package:jobby_application/candidate/home/widgets/widget_see_all.dart';
import 'package:jobby_application/candidate/home/widgets/widget_slider.dart';
import 'package:jobby_application/candidate/main/views/main_view.dart';
import 'package:jobby_application/candidate/search/views/search_view.dart';
import 'package:jobby_application/notification/views/notification_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routePath = '/home-page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CarouselController carouselController;

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
  }

  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBarHome(
        name: 'Hello! Chorn Thoen',
        diamond: '100.00',
        imageProfile: 'assets/images/rose.png',
        onNotification: () {
          context.push(NotificationPage.routePath);
        },
        onSearch: () {
          context.push(SearchView.routePath);
        },
        onProfile: () => tabController.animateTo(4),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const WidgetSlider(),
            WidgetSeeAll(
              onPressed: () {
                context.push(TrendingSeeAllPage.routePath);
              },
              title: 'Trending now',
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemCount: listTrending.length,
                itemBuilder: (context, index) {
                  return ItemTrending(
                    colorBackground: AppColors.kWhiteColor,
                    sizeBox: index == listTrending.length - 1 ? 0 : 12,
                    svgPath: listTrending[index].svgPath,
                    title: listTrending[index].title,
                    description: listTrending[index].description,
                    color: listTrending[index].color,
                  );
                },
              ),
            ),
            WidgetSeeAll(
              onPressed: () {
                context.push(HotJobSeeAllPage.routePath);
              },
              title: 'Hot jobs',
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: hotJobModel.length,
              itemBuilder: (context, index) {
                return ItemHotJobs(
                  sizeBox: index == hotJobModel.length - 1 ? 0 : 14,
                  title: hotJobModel[index].title,
                  name: hotJobModel[index].name,
                  image: hotJobModel[index].image,
                  salary: hotJobModel[index].salary,
                  time: hotJobModel[index].time,
                  role: hotJobModel[index].role,
                  date: hotJobModel[index].date,
                  color: hotJobModel[index].color,
                  isSaved: hotJobModel[index].isSaved,
                  onSaved: () {
                    setState(() {
                      hotJobModel[index].isSaved = !hotJobModel[index].isSaved;
                    });
                  },
                  onApply: () {
                    context.push(ApplyNowPage.routePath);
                  },
                );
              },
            ),
            WidgetSeeAll(
              onPressed: () {
                context.push(CompanySeeAllPage.routePath);
              },
              title: 'Company for you',
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 10
                ),
                scrollDirection: Axis.horizontal,
                itemCount: listCompany.length,
                itemBuilder: (context, index) {
                  return ItemCompanyForYou(
                    image: listCompany[index].image,
                    title: listCompany[index].title,
                    description: listCompany[index].description,
                    onPressed: () {
                      context.push(DetailCompanyPage.routePath);
                    },
                  );
                },
              ),
            ),
            WidgetSeeAll(
              onPressed: () {},
              title: 'Competitive salary',
            ),
            const CompetitiveSalaryWidget(),
            WidgetSeeAll(
              onPressed: () {
                context.push(HotJobSeeAllPage.routePath);
              },
              title: 'For you',
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: hotJobModel.length,
              itemBuilder: (context, index) {
                return ItemHotJobs(
                  sizeBox: index == hotJobModel.length - 1 ? 0 : 14,
                  title: hotJobModel[index].title,
                  name: hotJobModel[index].name,
                  image: hotJobModel[index].image,
                  salary: hotJobModel[index].salary,
                  time: hotJobModel[index].time,
                  role: hotJobModel[index].role,
                  date: hotJobModel[index].date,
                  color: hotJobModel[index].color,
                  isSaved: hotJobModel[index].isSaved,
                  onSaved: () {
                    setState(() {
                      hotJobModel[index].isSaved = !hotJobModel[index].isSaved;
                    });
                  },
                  onApply: () {
                    context.push(ApplyNowPage.routePath);
                  },
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Explore more',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kBlackColor,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.42,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  left: 16,
                  bottom: 10,
                  top: 10,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: listExplore.length,
                itemBuilder: (context, index) {
                  return ItemExploreMore(
                    image: listExplore[index].image,
                    title: listExplore[index].title,
                    description: listExplore[index].description,
                    onPressed: () {
                      if (index == 0) {
                        context.push(BlogsPage.routePath);
                      } else if (index == 1) {
                        context.push(EventPage.routePath);
                      } else if (index == 2) {
                        context.push(EBookPage.routePath);
                      }
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
