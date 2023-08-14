import 'package:flutter/material.dart';
import 'package:jobby_application/employer/home/models/manager_post_model_all.dart';
import 'package:jobby_application/employer/home/widgets/item_job_pending.dart';

class TabBarJobRejected extends StatelessWidget {
  const TabBarJobRejected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      itemCount: listJobRejected.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final item = listJobRejected[index];
        return ItemPending(
          title: item.title,
          status: item.status,
          onTap: () {},
        );
      },
    );
  }
}
