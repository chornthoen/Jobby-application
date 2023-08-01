import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class EBookPage extends StatefulWidget {
  const EBookPage({Key? key}) : super(key: key);

  static const String routePath = '/eBookPage';

  @override
  State<EBookPage> createState() => _EBookPageState();
}

class _EBookPageState extends State<EBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'E-Books ds',
      ),
    );
  }
}
