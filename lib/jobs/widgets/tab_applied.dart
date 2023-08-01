import 'package:flutter/material.dart';
import 'package:jobby_application/jobs/models/applied_models.dart';

import 'package:jobby_application/jobs/widgets/item_applied.dart';

class AppliedContent extends StatefulWidget {
  const AppliedContent({Key? key}) : super(key: key);

  @override
  State<AppliedContent> createState() => _AppliedContentState();
}

class _AppliedContentState extends State<AppliedContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          itemCount: appliedModel.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context,index){
            final applied = appliedModel[index];
            return ItemApplied(
              title: applied.title,
              name: applied.name,
              image: applied.image,
              salary: applied.salary,
              time: applied.time,
              role: applied.role,
              date: applied.date,
              color: applied.color,
              isSaved: applied.isSaved,
              onSaved: () {
                setState(() {
                  applied.isSaved = !applied.isSaved;
                });
              },
            );
          },
        ),
      ],
    );
  }
}
