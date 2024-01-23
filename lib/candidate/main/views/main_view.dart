import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobby_application/candidate/account/views/account_page.dart';
import 'package:jobby_application/candidate/chat/views/chat_page.dart';
import 'package:jobby_application/candidate/home/views/home_page.dart';
import 'package:jobby_application/candidate/jobs/views/job_page.dart';
import 'package:jobby_application/candidate/main/bloc/navigation_cubit.dart';
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

class _BodyMainViewState extends State<_BodyMainView> {
  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select(
      (NavigationCubit cubit) => cubit.state.indexTab,
    );
    return Scaffold(
      body: IndexedStack(
        index: selectedTab,
        children: const [
          HomePage(),
          JobPage(),
          ChatPage(),
          QuizzPage(),
          AccountPage(),
        ],
      ),
      bottomNavigationBar: NavigationPage(
        currentIndex: selectedTab,
        onTap: (index) {
          setState(() {
            context.read<NavigationCubit>().changeIndexTab(index);
          });
        },
      ),
    );
  }
}
