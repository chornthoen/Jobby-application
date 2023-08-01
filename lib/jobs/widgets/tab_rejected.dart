import 'package:flutter/material.dart';
import 'package:jobby_application/jobs/models/suitable_job_model.dart';
import 'package:jobby_application/jobs/widgets/item_rejected.dart';

import '../models/rejected_model.dart';

class RejectedContent extends StatefulWidget {
  const RejectedContent({Key? key}) : super(key: key);

  @override
  State<RejectedContent> createState() => _RejectedContentState();
}

class _RejectedContentState extends State<RejectedContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          itemCount: rejectedModel.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),

          itemBuilder: (context,index){
            final rejected = rejectedModel[index];
            return ItemRejected(
              title: rejected.title,
              name: rejected.name,
              image: rejected.image,
              salary: rejected.salary,
              time: rejected.time,
              role: rejected.role,
              date: rejected.date,
              color: rejected.color,
              isSaved: rejected.isSaved,
              onSaved: () {
                setState(() {
                  rejected.isSaved = !rejected.isSaved;
                });
              },
            );
          },
        ),
      ],
    );
  }
}
