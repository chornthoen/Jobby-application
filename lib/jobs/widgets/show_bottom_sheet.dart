import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';

class BottomSheets {
  static void showBottomSheet({
    required BuildContext context,
    required Widget child,
    required VoidCallback onPressed,
  }) {
    showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              child,
              Positioned(
                bottom: 10,
                left: 6,
                right: 6,
                child: ButtonAction(
                  isClick: true,
                  text: 'Save',
                  onPressed: onPressed,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
