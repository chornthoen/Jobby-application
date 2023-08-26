import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemNotes extends StatelessWidget {
  const ItemNotes({
    required this.image,
    required this.name,
    required this.date,
    required this.note,
    super.key,
    this.onEdit,
    this.onDelete,
  });

  final String image;
  final String name;
  final String date;
  final String note;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.kQuaternaryColor,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.kQuaternaryColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: onEdit,
                          child: const Icon(
                            PhosphorIcons.pencil_simple,
                            size: 20,
                            color: AppColors.kTertiaryColor,
                          ),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: onDelete,
                          child: const Icon(
                            PhosphorIcons.trash,
                            size: 20,
                            color: AppColors.kTertiaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  note,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 5),
                const Divider(
                  color: AppColors.kSeptenaryColor,
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
