
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class SnackBarTop{
  static void topSnackBar(BuildContext context, String message) {
    Flushbar(
      messageText: Row(
        children:  [
          Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      duration: const Duration(seconds: 2),
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: AppColors.kPrimaryColor.withOpacity(0.8),
      barBlur: 1,
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
    ).show(context);
  }

}
class Snackbar extends StatelessWidget {
  const Snackbar({
    super.key,
    this.imagePath,
    this.title,
  });
  final String? imagePath;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children:   [
          Image(
            image: AssetImage(imagePath!),
            width: 36,
            height: 36,
          ),
          const SizedBox(width: 3),
          Text(
            title!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

