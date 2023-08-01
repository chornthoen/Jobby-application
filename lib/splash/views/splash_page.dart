import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/onboarding/views/on_boarding_page.dart';

import '../../shared/colors/app_color.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const String routePath = '/';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        context.go(OnBoardingPage.routePath);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: Center(
          child: Image(
        image: AssetImage('assets/images/jobby_logo.png'),
        height: 100,
        width: 120,
      )),
    );
  }
}
