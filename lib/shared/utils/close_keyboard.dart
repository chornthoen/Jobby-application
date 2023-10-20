import 'package:flutter/material.dart';

class CloseKeyboard {
    static Future<void> closeKeyboard(BuildContext context) async {
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
  }
}
