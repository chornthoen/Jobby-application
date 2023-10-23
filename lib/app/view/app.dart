import 'package:flutter/material.dart';
import 'package:jobby_application/l10n/l10n.dart';
import 'package:jobby_application/router/app_router.dart';
import 'package:jobby_application/shared/theme/app_theme.dart';
import 'package:jobby_application/shared/theme/theme_helper.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       theme: AppTheme.lightTheme,
      // theme: theme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routerConfig,
    );
  }
}
