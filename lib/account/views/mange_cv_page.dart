import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class MangeCVPage extends StatefulWidget {
  const MangeCVPage({Key? key}) : super(key: key);

  static const String routePath = '/mange_cv_page';

  @override
  State<MangeCVPage> createState() => _MangeCVPageState();
}

class _MangeCVPageState extends State<MangeCVPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Manage CV'),
      body: Center(
        child: Text('Mange CV Page'),
      ),
    );
  }
}
