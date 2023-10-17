
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class CandidateDetailPage extends StatefulWidget {
  const CandidateDetailPage({super.key});

  static const String routePath = '/candidate_detail_page';

  @override
  State<CandidateDetailPage> createState() => _CandidateDetailPageState();
}

class _CandidateDetailPageState extends State<CandidateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: CustomAppBar(
        title: 'Candidate Detail',
        icon2: Icons.more_horiz,
        onTap2: () {},
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 34,
                  backgroundImage: AssetImage('assets/images/rose.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Rose',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Apple job: UI/UX Designer',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.kQuaternaryColor,
                      ),
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          const Icon(
                            Icons.star,
                            color: AppColors.kOrange400Color,
                            size: 24,
                          ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            ButtonOutLineAction(
              text: 'View Resume',
              height: 40,
              onPressed: (){},
            ),
            const SizedBox(height: 10),
            const Text(
              'Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
