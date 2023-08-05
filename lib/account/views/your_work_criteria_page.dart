import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class YourWorkCriteriaPage extends StatefulWidget {
  const YourWorkCriteriaPage({Key? key}) : super(key: key);

  static const String routePath = '/your_work_criteria_page';

  @override
  State<YourWorkCriteriaPage> createState() => _YourWorkCriteriaPageState();
}

class _YourWorkCriteriaPageState extends State<YourWorkCriteriaPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Your Work Criteria'),
      body: Center(
        child: Text('Your Work Criteria Page'),
      ),
    );
  }
}
