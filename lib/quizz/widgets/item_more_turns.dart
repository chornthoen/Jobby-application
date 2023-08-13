
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemMoreTurns extends StatelessWidget {
  const ItemMoreTurns({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 70,
              child: Stack(
                children: [
                  const Image(
                    image: AssetImage('assets/images/more_turn.png'),
                    width: 60,
                    height: 60,
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColors.kOrange400Color,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: AppColors.kWhiteColor,
                            width: 1.4,
                          ),
                        ),
                        child: Text(
                          'x$value',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.kWhiteColor,
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
        const Divider(
          color: AppColors.kGray200,
          thickness: 1,
          height: 30,
        ),

      ],
    );
  }
}
