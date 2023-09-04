
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
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
    );
  }
}
