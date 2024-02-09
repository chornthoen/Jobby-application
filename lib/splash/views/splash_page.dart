import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/onboarding/views/on_boarding_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const String routePath = '/';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.go(OnBoardingPage.routePath);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: Center(
        child: Lottie.asset(
          'assets/animations/splash_animate.json',
          height: 180,
          width: 180,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
