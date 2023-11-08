import 'package:flutter/material.dart';
import 'package:jobby_application/employer/home/models/service_package_model.dart';
import 'package:jobby_application/employer/home/widgets/item_service_packages.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';

class ServicePackageEmPage extends StatefulWidget {
  const ServicePackageEmPage({super.key});

  static const String routePath = '/service_package_em_page';

  @override
  State<ServicePackageEmPage> createState() => _ServicePackageEmPageState();
}

class _ServicePackageEmPageState extends State<ServicePackageEmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Service Package'),
      backgroundColor: AppColors.kBackgroundColor,
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        itemCount: 2,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final servicePackage = servicePackageList[index];
          return ItemServicePackage(
            index: index,
            title: servicePackage.title,
            diamond: servicePackage.diamond,
            price: servicePackage.price,
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: CustomElevatedButton(
          isClick: true,
          text: 'Buy more',
          onPressed: () {},
        ),
      ),
    );
  }
}
