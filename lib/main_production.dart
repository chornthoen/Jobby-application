import 'package:flutter/services.dart';
import 'package:jobby_application/app/app.dart';
import 'package:jobby_application/bootstrap.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  bootstrap(() => const App());
}
