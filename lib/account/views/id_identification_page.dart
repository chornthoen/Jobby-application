import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/models/card_model.dart';
import 'package:jobby_application/account/views/id_identification_detail_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_widget.dart';

class IDIdentificationPage extends StatefulWidget {
  const IDIdentificationPage({Key? key}) : super(key: key);

  static const String routePath = '/id_identification_page';

  @override
  State<IDIdentificationPage> createState() => _IDIdentificationPageState();
}

class _IDIdentificationPageState extends State<IDIdentificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'ID Identification'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/id.svg',
                  width: 30,
                  height: 30,
                  color: AppColors.kPrimaryColor,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Select your ID type',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Please select your ID type to continue the registration process',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.kQuaternaryColor,
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              itemCount: cardModel.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: cardModel[index].color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(cardModel[index].image),
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        cardModel[index].title,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kBlackColor,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          context.push(
                            IDIdentificationDetailPage.routePath,
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          decoration: const BoxDecoration(
                            color: AppColors.kWhiteColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            PhosphorIcons.arrow_right,
                            color: AppColors.kPrimaryColor,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

