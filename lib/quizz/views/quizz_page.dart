import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({Key? key}) : super(key: key);

  static const String routePath = '/quizz-page';


  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/quiz_background.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 54,
            left: 16,
            right: 16,
            child: Row(
              children: [
                ActionAppBarQuizz(
                  imagePath: 'assets/images/bg_home.png',
                  svg: 'assets/svg/home-quizz.svg',
                ),
                const SizedBox(width: 16),
                ActionAppBarQuizz(
                  imagePath: 'assets/images/bg_leader.png',
                  svg: 'assets/svg/podium.svg',
                ),
                ActionAppBarQuizz(
                  imagePath: 'assets/images/get_daimond.png',
                  svg: 'assets/svg/diamond-color.svg',
                  title: '22',
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}

class ActionAppBarQuizz extends StatelessWidget {
  const ActionAppBarQuizz({
    super.key,
    this.imagePath,
    this.title = '',
    this.svg,
    this.onPressed,
  });
  final String? imagePath;
  final String? title;
  final String? svg;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Container(
            width: 54,
            height: 54,
            child: Image(
              image: AssetImage(imagePath!),
              width: 54,
              height: 54,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.only(left: 14, top: 10, bottom: 15, right: 14),
              child: Row(
                children: [
                  SvgPicture.asset(
                    svg!,
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    title!,
                    style: TextStyle(
                      color: AppColors.kWhiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}





















class frontAction extends StatelessWidget {
  const frontAction({
    super.key,
    this.color,
    this.colorTop,
    this.colorBottom,
    this.svg,
    this.onPressed,
  });

  final Color? color;
  final Color? colorTop;
  final Color? colorBottom;
  final String? svg;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 16,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.kGreenColor,
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.kGreen300Color,
                      AppColors.kGreenColor,
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  width: 8,
                  height: 10,
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteColor.withOpacity(0.3),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                      topRight: Radius.circular(2),
                      bottomLeft: Radius.circular(2),
                    ),
                  ),
                ),
              ),
               Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    'assets/svg/home-quizz.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}

class Bg extends StatelessWidget {
  const Bg({
    super.key,
    this.color,
    this.colorTop,
    this.colorBottom,
  });
  final Color? color;
  final Color? colorTop;
  final Color? colorBottom;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 56,
      left: 16,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              // color: Colors.green.shade800,
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  colorTop!,
                  colorBottom!,
                  // AppColors.kGreen200Color,
                  // Colors.green.shade900,
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
