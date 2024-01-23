import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobby_application/app/app.dart';
import 'package:jobby_application/bootstrap.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  bootstrap(() => const App());
}
