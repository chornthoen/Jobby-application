import 'package:flutter/material.dart';

class SignUpHeadHunterPage extends StatefulWidget {
  const SignUpHeadHunterPage({Key? key}) : super(key: key);

  static const String routePath = '/sign-up-head-hunter-page';

  @override
  State<SignUpHeadHunterPage> createState() => _SignUpHeadHunterPageState();
}

class _SignUpHeadHunterPageState extends State<SignUpHeadHunterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Head Hunter'),
      ),
      body: const Center(
        child: Text('Sign Up Head Hunter'),
      ),
    );
  }
}
