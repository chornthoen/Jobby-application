import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/authentication/signin/views/sign_in_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/models/on_boarding_model.dart';
import 'package:jobby_application/shared/widgets/action_borderline.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/circular_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  static const String routePath = '/onboarding';

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.kBackgroundColor,
        elevation: 0,
        toolbarHeight: 65,
        leadingWidth: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5, top: 10),
          child: TextButton(
            onPressed: () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              );
            },
            child: Text(
              currentIndex == 0 ? '' : 'Prev',
              style: const TextStyle(
                color: AppColors.kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5, top: 5),
            child: TextButton(
              onPressed: () {
                context.push(SignInPage.routePath);
              },
              child: Text(
                currentIndex == 3 ? '' : 'Skip',
                style: const TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            itemCount: onBoardingModel.length,
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    Image.asset(
                      onBoardingModel[index].image,
                      height: MediaQuery.of(context).size.height * 0.4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Text(
                            onBoardingModel[index].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            onBoardingModel[index].description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.22,
            left: 0,
            right: 0,
            child: ActionsBorderLine(currentIndex: currentIndex),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.05,
            left: 0,
            right: 0,
            child: currentIndex != 3
                ? CircularWidget(
                    currentIndex: currentIndex,
                    pageController: pageController,
                  )
                : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomElevatedButton(
                      isClick: true,
                      text: 'Get Started',
                      onPressed: () {
                        context.push(SignInPage.routePath);
                      },
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: AppColors.kWhiteColor,
                        size: 26,
                      ),
                    ),
                ),
          ),
        ],
      ),
    );
  }
}
