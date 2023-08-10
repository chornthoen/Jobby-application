import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';

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

  static void showBottomSheetCustom({
    required BuildContext context,
    required String title,
    required String image,
    required String textButton,
    required String description,
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kPrimaryColor
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image(
                    image: AssetImage(image),
                    width: 180,
                    height: 180,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kQuaternaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ButtonAction(
                isClick: true,
                text: textButton,
                onPressed: onPressed,
              ),
              const SizedBox(height: 10),
              ButtonOutLineAction(
                text: 'Cancel',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
