
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class ServicePackagePage extends StatefulWidget {
  const ServicePackagePage({Key? key}) : super(key: key);

  static const String routePath = '/service-package-page';

  @override
  State<ServicePackagePage> createState() => _ServicePackagePageState();
}

class _ServicePackagePageState extends State<ServicePackagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Service Package'),
    );
  }
}
