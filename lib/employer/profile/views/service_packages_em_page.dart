
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class ServicePackageEmPage extends StatefulWidget {
  const ServicePackageEmPage({Key? key}) : super(key: key);

  static const String routePath = '/service_package_em_page';

  @override
  State<ServicePackageEmPage> createState() => _ServicePackageEmPageState();
}

class _ServicePackageEmPageState extends State<ServicePackageEmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Service Package'),
    );
  }
}
