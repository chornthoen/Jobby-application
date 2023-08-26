import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class AboutJobbyEmPage extends StatefulWidget {
  const AboutJobbyEmPage({super.key});

  static const String routePath = '/about_jobby_em_page';

  @override
  State<AboutJobbyEmPage> createState() => _AboutJobbyEmPageState();
}

class _AboutJobbyEmPageState extends State<AboutJobbyEmPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: CustomAppBar(title: 'About Jobby'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
