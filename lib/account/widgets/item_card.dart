import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  final String title;
  final String icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        minVerticalPadding: 0,
        contentPadding: const EdgeInsets.only(
          left: 12,
          right: 4,
        ),
        onTap: onPressed,
        title: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 25,
              height: 25,
              color: title == 'Log out'
                  ? AppColors.kRedColor
                  : AppColors.kQuaternaryColor,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style:  TextStyle(
                color: title == 'Log out'
                    ? AppColors.kRedColor
                    : AppColors.kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        trailing:  Icon(
          Icons.arrow_forward_ios,
          color: title == 'Log out'
              ? AppColors.kRedColor
              : AppColors.kQuaternaryColor,
          size: 20,
        ),
      ),
    );
  }
}
