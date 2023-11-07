import 'package:flutter/material.dart';
import 'package:jobby_application/employer/home/models/hiring_model.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/item_hiring_team.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class TabHiringTeam extends StatefulWidget {
  const TabHiringTeam({super.key});

  @override
  State<TabHiringTeam> createState() => _TabHiringTeamState();
}

class _TabHiringTeamState extends State<TabHiringTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: ListView.builder(
        padding: const EdgeInsets.all(AppSpacing.lg),
        itemCount: hiringTeam.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ItemHiringTeam(
            image: hiringTeam[index].image,
            name: hiringTeam[index].name,
            position: hiringTeam[index].position,
            onPressed: () {},
          );
        },
      ),
    );
  }
}
