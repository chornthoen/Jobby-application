import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class AboutJobbyPage extends StatefulWidget {
  const AboutJobbyPage({Key? key}) : super(key: key);

  static const String routePath = '/about_jobby_page';

  @override
  State<AboutJobbyPage> createState() => _AboutJobbyPageState();
}

class _AboutJobbyPageState extends State<AboutJobbyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'About Jobby'),
      body: Center(
        child: Text('About Jobby Page'),
      ),
    );
  }
}
