import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class LoyaltyPage extends StatefulWidget {
  const LoyaltyPage({Key? key}) : super(key: key);

  static const String routePath = '/loyalty-page';

  @override
  State<LoyaltyPage> createState() => _LoyaltyPageState();
}

class _LoyaltyPageState extends State<LoyaltyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Loyalty'),
    );
  }
}
