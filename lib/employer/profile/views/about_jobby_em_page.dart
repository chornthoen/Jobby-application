import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
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
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm,
          ),
          child: Text(
            """
This sample creates a MaterialApp with a Theme whose ColorScheme is based on Colors.blue, but with the color scheme's ColorScheme.secondary color overridden to be green. The AppBar widget uses the color scheme's ColorScheme.primary as its default background color and the FloatingActionButton widget uses the color scheme's ColorScheme.secondary for its default background. By default, the Text widget uses TextTheme.bodyMedium, and the color of that TextStyle has been changed to purple.""",
            style: TextStyle(
              fontSize: AppSpacing.lg,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
