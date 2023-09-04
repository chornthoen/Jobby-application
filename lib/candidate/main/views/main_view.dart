import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/account/views/account_page.dart';
import 'package:jobby_application/candidate/chat/views/chat_page.dart';
import 'package:jobby_application/candidate/home/views/home_page.dart';
import 'package:jobby_application/candidate/jobs/views/job_page.dart';
import 'package:jobby_application/candidate/main/widgets/navigation_page.dart';
import 'package:jobby_application/candidate/quizz/views/quizz_page.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const String routePath = '/main-view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {


  @override
  Widget build(BuildContext context) {
    return const _BodyMainView();
  }
}

class _BodyMainView extends StatefulWidget {
  const _BodyMainView();

  @override
  State<_BodyMainView> createState() => _BodyMainViewState();
}

class _BodyMainViewState extends State<_BodyMainView>
    with SingleTickerProviderStateMixin {
  late TabController tabController; // declare tab controller

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
          const HomePage(),
          const JobPage(),
          const ChatPage(),
          GestureDetector(
            onTap: () {
              context.go(QuizzPage.routePath );
            },
          ),
          const AccountPage(),
        ],
      ),
      bottomNavigationBar: NavigationPage(tabController: tabController),
    );
  }
}
