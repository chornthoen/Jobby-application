import 'package:flutter/material.dart';
import 'package:jobby_application/quizz/models/more_turns_model.dart';
import 'package:jobby_application/quizz/widgets/item_more_turns.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class MoreTurnsPage extends StatefulWidget {
  const MoreTurnsPage({super.key});

  static const String routePath = '/more-turns-page';

  @override
  State<MoreTurnsPage> createState() => _MoreTurnsPageState();
}

class _MoreTurnsPageState extends State<MoreTurnsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'How To Get More Turns',size: 16,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: moreTurnModel.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final item = moreTurnModel[index];
            return ItemMoreTurns(
              title: item.title,
              value: item.value,
            );
          },
        ),
      ),
    );
  }
}
