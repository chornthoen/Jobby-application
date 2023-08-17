
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemJobShowing extends StatelessWidget {
  const ItemJobShowing({
    super.key,
    required this.title,
    required this.location,
    required this.jobType,
    required this.salary,
    required this.candidate,
    required this.onTap,
    this.isPaused,
    this.isExpired = false,
    this.onPressed,
  });

  final String title;
  final String location;
  final String jobType;
  final String salary;
  final String candidate;
  final VoidCallback onTap;
  final bool? isPaused;
  final bool? isExpired;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                AppColors.kBoxShadowColor,
                AppColors.kBoxShadowColor1,
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: onTap,
                      child: const Icon(
                        Icons.more_horiz,
                        color: AppColors.kPrimaryColor,
                        size: 24,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                if (isPaused == true)
                  Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.kQuaternaryColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Text(
                      'Paused',
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                if (isExpired == true)
                  Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.kRed400Color,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Text(
                      'Expired',
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Location',
                            style: TextStyle(
                              color: AppColors.kQuinaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            location,
                            style: const TextStyle(
                              color: AppColors.kQuaternaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Job Type',
                            style: TextStyle(
                              color: AppColors.kQuinaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            jobType,
                            style: const TextStyle(
                              color: AppColors.kQuaternaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Salary',
                          style: TextStyle(
                            color: AppColors.kQuinaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          salary,
                          style: const TextStyle(
                            color: AppColors.kQuaternaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Candidate',
                          style: TextStyle(
                            color: AppColors.kQuinaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          candidate,
                          style: const TextStyle(
                            color: AppColors.kQuaternaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
