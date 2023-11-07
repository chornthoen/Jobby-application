import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class PrivacyAndPolicyPage extends StatefulWidget {
  const PrivacyAndPolicyPage({super.key});

  static const String routePath = '/privacy-and-policy-page';

  @override
  State<PrivacyAndPolicyPage> createState() => _PrivacyAndPolicyPageState();
}

class _PrivacyAndPolicyPageState extends State<PrivacyAndPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: CustomAppBar(title: 'Privacy and Policy'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm,
          ),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed euismod, diam id aliquam ultricies, nunc nisl ultricies '
            'nunc, vitae aliquam nunc nisl quis nunc. Donec euismod '
            'dignissim nunc, quis aliquam nunc. Donec euismod dignissim '
            'nunc, quis aliquam nunc. Donec euismod dignissim nunc, quis '
            'aliquam nunc. Donec euismod dignissim nunc, quis aliquam '
            'nunc. Donec euismod dignissim nunc, quis aliquam nunc. '
            'Donec euismod dignissim nunc, quis aliquam nunc. Donec '
            'euismod dignissim nunc, quis aliquam nunc. Donec euismod '
            'dignissim nunc, quis aliquam nunc. Donec euismod dignissim '
            'nunc, quis aliquam nunc. Donec euismod dignissim nunc, quis '
            'aliquam nunc. Donec euismod dignissim nunc, quis aliquam '
            'nunc. Donec euismod dignissim nunc, quis aliquam nunc. '
            'Donec euismod dignissim nunc, quis aliquam nunc. Donec '
            'euismod dignissim nunc, quis aliquam nunc. Donec euismod '
            'dignissim nunc, quis aliquam nunc. Donec euismod dignissim '
            'nunc, quis aliquam nunc. Donec euismod dignissim nunc, quis '
            'aliquam nunc. Donec euismod dignissim nunc, quis aliquam '
            'nunc. Donec euismod dignissim nunc, quis aliquam nunc. '
            'Donec euismod dignissim nunc, quis aliquam nunc. Donec '
            'euismod dignissim nunc, quis aliquam nunc. Done',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
