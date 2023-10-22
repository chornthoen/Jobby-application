import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class MangeCVPage extends StatefulWidget {
  const MangeCVPage({super.key});

  static const String routePath = '/mange_cv_page';

  @override
  State<MangeCVPage> createState() => _MangeCVPageState();
}

class _MangeCVPageState extends State<MangeCVPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'Manage CV'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upload your CV or resume to apply the job vacancy in our'
                  ' application',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.kColorGray600,
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: DottedBorder(
                padding: const EdgeInsets.symmetric(vertical: 30),
                dashPattern: const [8, 4],
                borderType: BorderType.RRect,
                radius: const Radius.circular(10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    Icon(
                      PhosphorIcons.cloud_arrow_up,
                      color: AppColors.kColorGray600,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Upload your file',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kColorGray600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Your list CV or resume',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.kPrimaryColor,
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listCV.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: listCV[index],
                          groupValue: listCV[index].index,
                          onChanged: (value) {
                            setState(() {
                              listCV[index].index = listCV[index].index;
                            });
                          },
                          fillColor: MaterialStateProperty.all<Color>(
                            AppColors.kPrimaryColor,
                          ),
                          focusColor: AppColors.kPrimaryColor,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listCV[index].title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColors.kPrimaryColor,
                              ),
                            ),
                            Text(
                              listCV[index].date,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.kColorGray600,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              listCV.removeAt(index);
                            });
                          },
                          child: const Icon(
                            PhosphorIcons.trash,
                            color: AppColors.kColorGray600,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListCVModel{

  ListCVModel({
    required this.title,
    required this.date,
    required this.index,
  });
  final String title;
  final String date;
   int index;
}

//list cv model 3 item
List<ListCVModel> listCV = [
  ListCVModel(
    title: 'CV or Resume 1',
    date: '12/12/2021',
    index: 0,
  ),
  ListCVModel(
    title: 'CV or Resume 2',
    date: '12/12/2021',
    index: 1,
  ),
  ListCVModel(
    title: 'CV or Resume 3',
    date: '12/12/2021',
    index: 2,
  ),
];
