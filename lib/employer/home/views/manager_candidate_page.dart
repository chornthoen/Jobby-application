import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/employer/home/models/manager_candidate_model.dart';
import 'package:jobby_application/employer/home/views/candidate_detail_page.dart';
import 'package:jobby_application/employer/home/widgets/item_manager_candidate.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class ManagerCandidatePage extends StatefulWidget {
  const ManagerCandidatePage({super.key});

  static const String routePath = '/manager-candidate-page';

  @override
  State<ManagerCandidatePage> createState() => _ManagerCandidatePageState();
}

class _ManagerCandidatePageState extends State<ManagerCandidatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: CustomAppBar(
        title: 'Manager Candidate',
        icon2: PhosphorIcons.magnifying_glass,
        onTap2: () {},
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(
                      'Total: ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kQuaternaryColor,
                      ),
                    ),
                    Text(
                      '33',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'New: ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kQuaternaryColor,
                      ),
                    ),
                    Text(
                      '50',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 70,
                  ),
                  itemCount: managerCandidateList.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final managerCandidate = managerCandidateList[index];
                    return ItemManagerCandidate(
                      image: managerCandidate.image,
                      name: managerCandidate.name,
                      position: managerCandidate.position,
                      star: managerCandidate.star,
                      status: managerCandidate.status,
                      onTap: () {
                        context.push(CandidateDetailPage.routePath);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
            child: ButtonAction(
              isClick: true,
              text: 'Filter Candidates',
              icon: PhosphorIcons.funnel,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
