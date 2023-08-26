import 'package:flutter/material.dart';
import 'package:jobby_application/home/models/company_for_you_model.dart';
import 'package:jobby_application/home/widgets/itemCompany.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class CompanySeeAllPage extends StatefulWidget {
  const CompanySeeAllPage({super.key});

  static const String routePath = '/companySeeAllPage';

  @override
  State<CompanySeeAllPage> createState() => _CompanySeeAllPageState();
}

class _CompanySeeAllPageState extends State<CompanySeeAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Company For You',
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.count(
          crossAxisCount: 2,
          physics: const BouncingScrollPhysics(),
          children: List.generate(
            listCompany.length,
            (index) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: ItemCompanyForYou(
                  image: listCompany[index].image,
                  title: listCompany[index].title,
                  description: listCompany[index].description,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
