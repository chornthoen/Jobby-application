import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/employer/home/models/category_model.dart';
import 'package:jobby_application/employer/home/models/overview_model.dart';
import 'package:jobby_application/employer/home/models/upcoming_model.dart';
import 'package:jobby_application/employer/home/views/gift_page.dart';
import 'package:jobby_application/employer/home/views/loyalty_page.dart';
import 'package:jobby_application/employer/home/views/manager_candidate_page.dart';
import 'package:jobby_application/employer/home/views/manager_post_page.dart';
import 'package:jobby_application/employer/home/views/service_package_page.dart';
import 'package:jobby_application/employer/home/widgets/item_category.dart';
import 'package:jobby_application/employer/home/widgets/item_overview.dart';
import 'package:jobby_application/employer/home/widgets/item_upcoming.dart';
import 'package:jobby_application/home/widgets/app_bar_home.dart';
import 'package:jobby_application/notification/views/notification_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class HomeEmployerPage extends StatefulWidget {
  const HomeEmployerPage({super.key});

  static const String routePath = '/home_employer';

  @override
  State<HomeEmployerPage> createState() => _HomeEmployerPageState();
}

class _HomeEmployerPageState extends State<HomeEmployerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBarHome(
        isEmployer: true,
        name: 'Chorn Thoen',
        diamond: '100.00',
        imageProfile: 'assets/images/thoen.png',
        onNotification: () {
          context.push(NotificationPage.routePath);
        },
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Overview',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                itemCount: listOverview.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.6,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context,index){
                  final item = listOverview[index];
                  return  ItemOverview(
                    title: item.title,
                    value: item.value,
                    percent: item.percent,
                    isUp: item.isUp,
                  );
                },

              ),
              const SizedBox(height: 10),
              const Text(
                'Upcoming Interview',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                itemCount: listUpcoming.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  final item = listUpcoming[index];
                  return ItemUpComing(
                    title: item.title,
                    description: item.description,
                    date: item.date,
                  );
                },
              ),
              const SizedBox(height: 10),
              const Text(
                'Category',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              GridView.builder(
                itemCount: listCategory.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context,index){
                  final item = listCategory[index];
                  return  ItemCategory(
                    title: item.title,
                    svgPath: item.svgPath,
                    color: item.color,
                    onPressed: (){
                      switch(item.id){
                        case 1:
                          context.push(ManagerPostPage.routePath);
                          break;
                        case 2:
                          context.push(ManagerCandidatePage.routePath);
                          break;
                        case 3:
                          context.push(ServicePackagePage.routePath);
                          break;
                        case 4:
                          context.push(LoyaltyPage.routePath);
                          break;
                        case 5:
                          context.push(GiftPage.routePath);
                          break;
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
