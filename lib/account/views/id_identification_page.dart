import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class IDIdentificationPage extends StatefulWidget {
  const IDIdentificationPage({Key? key}) : super(key: key);

  static const String routePath = '/id_identification_page';

  @override
  State<IDIdentificationPage> createState() => _IDIdentificationPageState();
}

class _IDIdentificationPageState extends State<IDIdentificationPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: 'ID Identification'),
      body: Center(
        child: Text('ID Identification Page'),
      ),
    );
  }
}
