import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class IDIdentificationDetailPage extends StatefulWidget {
  const IDIdentificationDetailPage({super.key});

  static const String routePath = '/id_identification_detail_page';

  @override
  State<IDIdentificationDetailPage> createState() =>
      _IDIdentificationDetailPageState();
}

class _IDIdentificationDetailPageState
    extends State<IDIdentificationDetailPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'ID Identification'),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: AppSpacing.xlg),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: width * 0.6,
                      height: height * 0.2,
                      child: DottedBorder(
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSpacing.xxxlg,
                        ),
                        dashPattern: const [8, 4],
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(AppSpacing.sm),
                        child: const Center(
                          child: Icon(
                            PhosphorIcons.cloud_arrow_up,
                            color: AppColors.kColorGray600,
                            size: AppSpacing.xxlg,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  const Text(
                    'Front of identity card',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kColorGray600,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: width * 0.6,
                      height: height * 0.2,
                      child: DottedBorder(
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSpacing.xxxlg,
                        ),
                        dashPattern: const [8, 4],
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(AppSpacing.sm),
                        child: const Center(
                          child: Icon(
                            PhosphorIcons.cloud_arrow_up,
                            color: AppColors.kColorGray600,
                            size: AppSpacing.xxlg,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  const Text(
                    'Back of identity card',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kColorGray600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            const Text(
              'Note:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.kColorGray600,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            const Row(
              children: [
                Icon(
                  PhosphorIcons.check,
                  color: AppColors.kColorGray600,
                  size: AppSpacing.xlg,
                ),
                SizedBox(width: AppSpacing.sm),
                Text(
                  'The image is clear, no loss of edges',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kColorGray600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            const Row(
              children: [
                Icon(
                  PhosphorIcons.check,
                  color: AppColors.kColorGray600,
                  size: AppSpacing.xlg,
                ),
                SizedBox(width: AppSpacing.sm),
                Text(
                  'The picture is in the frame',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kColorGray600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
