import 'package:flutter/material.dart';
import 'package:jobby_application/account/views/account_page.dart';
import 'package:jobby_application/chat/views/chat_page.dart';
import 'package:jobby_application/home/views/home_page.dart';
import 'package:jobby_application/jobs/views/job_page.dart';
import 'package:jobby_application/main/widgets/navigation_page.dart';
import 'package:jobby_application/quizz/views/quizz_page.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const String routePath = '/main-view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {


  @override
  Widget build(BuildContext context) {
    return _BodyMainView();
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
        children: const [
          HomePage(),
          JobPage(),
          ChatPage(),
          QuizzPage(),
          AccountPage(),
        ],
      ),
      bottomNavigationBar: NavigationPage(tabController: tabController),
    );
  }
}
