import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class ManagerCandidatePage extends StatefulWidget {
  const ManagerCandidatePage({Key? key}) : super(key: key);

  static const String routePath = '/manager-candidate-page';

  @override
  State<ManagerCandidatePage> createState() => _ManagerCandidatePageState();
}

class _ManagerCandidatePageState extends State<ManagerCandidatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Manager Candidate'),
    );
  }
}
