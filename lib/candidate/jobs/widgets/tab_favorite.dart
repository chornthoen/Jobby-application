import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/views/apply_now/views/apply_now_page.dart';
import 'package:jobby_application/candidate/jobs/models/suitable_job_model.dart';
import 'package:jobby_application/candidate/jobs/widgets/item_favorite.dart';

class FavoriteContent extends StatefulWidget {
  const FavoriteContent({super.key});

  @override
  State<FavoriteContent> createState() => _FavoriteContentState();
}

class _FavoriteContentState extends State<FavoriteContent> {

  //remove saved
  void removeSaved() {
    setState(() {
      suitableModel.removeWhere((element) => element.isSaved == false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: suitableModel.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context,index){
        return ItemFavorite(
          title: suitableModel[index].title,
          name: suitableModel[index].name,
          image: suitableModel[index].image,
          salary: suitableModel[index].salary,
          time: suitableModel[index].time,
          role: suitableModel[index].role,
          date: suitableModel[index].date,
          color: suitableModel[index].color,
          isSaved: suitableModel[index].isSaved,
          onSaved: () {
            setState(() {
              suitableModel[index].isSaved = !suitableModel[index].isSaved;
              removeSaved();
            });
          },
          onApply: () {
            context.push(ApplyNowPage.routePath);
          },
        );
      },
    );
  }
}
