import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/chat/widgets/action_call.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class CallVideoPage extends StatefulWidget {
  const CallVideoPage({super.key});

  static const String routePath = '/call_video_page';

  @override
  State<CallVideoPage> createState() => _CallVideoPageState();
}

class _CallVideoPageState extends State<CallVideoPage> {
  late Timer timer;
  int secondsRemaining = 0;

  DateTime now = DateTime.now();

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        secondsRemaining++;
      });
    });
  }

  String formatTime(int timeInSecs) {
    final minutes = (timeInSecs / 60).floor();
    final seconds = timeInSecs - (minutes * 60);
    final formattedSeconds = seconds < 10 ? '0$seconds' : '$seconds';
    if (minutes < 10) {
      return '0$minutes:$formattedSeconds';
    }
    return '$minutes:$formattedSeconds';
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoad = true;
      });
    });
    startTimer();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  bool isLoad = false;

  bool isVoid = true;
  bool isCamera = true;
  bool isSound = true;
  bool isCallEnd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/rose.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.kPrimaryColor,
                    AppColors.kPrimaryColor.withOpacity(0.8),
                  ],
                ),
              ),
            ),
          ),
          if (isCamera)
            Positioned(
              top: 40,
              right: 16,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.17,
                width: MediaQuery.of(context).size.width * 0.23,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/rose.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          Positioned(
            top: 40,
            left: 10,
            child: Container(
              padding: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: AppColors.kPrimaryColor.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                splashRadius: 20,
                splashColor: AppColors.kWhiteColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.kWhiteColor,
                  size: 24,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.03,
            left: 0,
            right: 0,
            child: Column(
              children: [
                const Text(
                  'Rose',
                  style: TextStyle(
                    color: AppColors.kWhiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  isLoad
                      ? secondsRemaining == 0
                          ? '00:00'
                          : formatTime(secondsRemaining)
                      : 'Calling...',
                  style: const TextStyle(
                    color: AppColors.kWhiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActionCall(
                        onPressed: () {
                          setState(() {
                            isCamera = !isCamera;
                          });
                        },
                        icon: isCamera
                            ? Icons.videocam_outlined
                            : Icons.videocam_off_outlined,
                        color: AppColors.kWhiteColor.withOpacity(0.2),
                        isSubmit: isCamera,
                      ),
                      ActionCall(
                        isSubmit: true,
                        onPressed: () {
                          setState(() {
                            isVoid = !isVoid;
                          });
                        },
                        icon: isVoid ? Icons.mic_none : Icons.mic_off_outlined,
                        color: AppColors.kWhiteColor.withOpacity(0.2),
                      ),
                      ActionCall(
                        onPressed: () {
                          setState(() {
                            isSound = !isSound;
                          });
                        },
                        isSubmit: isSound,
                        icon: isSound ? Icons.volume_up : Icons.volume_off,
                        color: AppColors.kWhiteColor.withOpacity(0.2),
                      ),
                      ActionCall(
                        onPressed: () {},
                        icon: Icons.call_end,
                        color: AppColors.kRedColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
