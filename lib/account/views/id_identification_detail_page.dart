
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class IDIdentificationDetailPage extends StatefulWidget {
  const IDIdentificationDetailPage({Key? key}) : super(key: key);

  static const String routePath = '/id_identification_detail_page';

  @override
  State<IDIdentificationDetailPage> createState() =>
      _IDIdentificationDetailPageState();
}

class _IDIdentificationDetailPageState extends State<IDIdentificationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'ID Identification'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: DottedBorder(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        dashPattern: const [8, 4],
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(10),
                        child:const Center(
                          child: Icon(
                            PhosphorIcons.cloud_arrow_up,
                            color: AppColors.kQuaternaryColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Front of identity card',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kQuaternaryColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: DottedBorder(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        dashPattern: const [8, 4],
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(10),
                        child:const Center(
                          child: Icon(
                            PhosphorIcons.cloud_arrow_up,
                            color: AppColors.kQuaternaryColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Back of identity card',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kQuaternaryColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Note:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.kQuaternaryColor,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(
                  PhosphorIcons.check,
                  color: AppColors.kQuaternaryColor,
                  size: 22,
                ),
                SizedBox(width: 10),
                Text(
                  'The image is clear, no loss of edges',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kQuaternaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(
                  PhosphorIcons.check,
                  color: AppColors.kQuaternaryColor,
                  size: 22,
                ),
                SizedBox(width: 10),
                Text(
                  'The picture is in the frame',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kQuaternaryColor,
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
