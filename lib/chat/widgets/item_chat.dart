import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemChat extends StatelessWidget {
  const ItemChat({
    super.key,
    required this.id,
    required this.avatarUrl,
    required this.name,
    required this.message,
    required this.time,
    this.isMessageRead = false,
    this.online = false,
    this.isVerified = false,
    this.onTap,
    this.countMessage,
  });

  final int id;
  final String avatarUrl;
  final String name;
  final String message;
  final String time;
  final bool isMessageRead;
  final bool online;
  final bool isVerified;
  final int? countMessage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.kGray100),
          boxShadow: [
            AppColors.kBoxShadowColor,
            AppColors.kBoxShadowColor1,
          ],
        ),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  foregroundColor: AppColors.kWhiteColor,
                  backgroundColor: AppColors.kWhiteColor,
                  backgroundImage: AssetImage(avatarUrl),
                  radius: 28,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color:
                      online ? AppColors.kGreenColor : AppColors.kSenaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.kWhiteColor,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 18,
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 4),
                      if (isVerified)
                        SvgPicture.asset(
                          'assets/svg/verified.svg',
                          width: 16,
                          height: 16,
                        ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          message,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.kPrimaryColor,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.kQuinaryColor,
                  ),
                ),
                const SizedBox(height: 2),
                if (isMessageRead)
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      countMessage.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.kWhiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
