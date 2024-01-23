import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/main/bloc/navigation_cubit.dart';
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

class _MainEmployerPageState extends State<MainEmployerPage> {
  int selected = 0;

  List<Widget> tabs = [
    const HomeEmployerPage(),
    const SearchEmployerPage(),
    const PostEmployerPage(),
    const ChatEmployerPage(),
    const ProfileEmployerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select(
      (NavigationCubit cubit) => cubit.state.indexTab,
    );
    return Scaffold(
      body: IndexedStack(
        index: selectedTab,
        children: tabs,
      ),
      bottomNavigationBar: NavigationEmployerPage(
        currentIndex: selectedTab,
        onTap: (index) {
          setState(() {
            if (index == 0) {
              context.read<NavigationCubit>().changeIndexTab(0);
            } else if (index == 1) {
              context.read<NavigationCubit>().changeIndexTab(1);
            } else if (index == 2) {
              context.read<NavigationCubit>().changeIndexTab(0);
              context.push(PostEmployerPage.routePath);
            } else if (index == 3) {
              context.read<NavigationCubit>().changeIndexTab(3);
            } else if (index == 4) {
              context.read<NavigationCubit>().changeIndexTab(4);
            }
          });
        },
      ),
    );
  }
}
