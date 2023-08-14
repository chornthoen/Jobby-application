import 'package:flutter/material.dart';

import '../../../shared/widgets/custom_app_bar.dart';

class MemberEmPage extends StatefulWidget {
  const MemberEmPage({Key? key}) : super(key: key);

  static const String routePath = '/member_em_page';

  @override
  State<MemberEmPage> createState() => _MemberEmPageState();
}

class _MemberEmPageState extends State<MemberEmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Member')
    );
  }
}
