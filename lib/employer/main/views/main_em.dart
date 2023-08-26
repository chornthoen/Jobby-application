
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/employer/chat/views/chat_em_page.dart';
import 'package:jobby_application/employer/home/views/home_em_page.dart';
import 'package:jobby_application/employer/main/widgets/navigation_em_page.dart';
import 'package:jobby_application/employer/post/views/post_em_page.dart';
import 'package:jobby_application/employer/profile/views/profile_page.dart';
import 'package:jobby_application/employer/search/views/search_em_page.dart';

class MainEmployerPage extends StatefulWidget {
  const MainEmployerPage({super.key});

  static const String routePath = '/main_employer';

  @override
  State<MainEmployerPage> createState() => _MainEmployerPageState();
}

class _MainEmployerPageState extends State<MainEmployerPage>
    with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children:  [
          const HomeEmployerPage(),
          const SearchEmployerPage(),
          GestureDetector(
            onTap: () {
              context.push(PostEmployerPage.routePath );
            },
          ),
          const ChatEmployerPage(),
          const ProfileEmployerPage(),
        ],
      ),
      bottomNavigationBar: NavigationEmployerPage(tabController: tabController),
    );
  }
}
