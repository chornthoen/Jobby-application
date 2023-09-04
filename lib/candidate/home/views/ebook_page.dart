import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/models/ebook_model.dart';
import 'package:jobby_application/candidate/home/views/ebook_detail_page.dart';
import 'package:jobby_application/candidate/home/widgets/item_ebook.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class EBookPage extends StatefulWidget {
  const EBookPage({super.key});

  static const String routePath = '/eBookPage';

  @override
  State<EBookPage> createState() => _EBookPageState();
}

class _EBookPageState extends State<EBookPage> {
  List<String> tabList = [
    'All',
    'Knowledges',
    'Skills',
    'Design',
    'Marketing',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Events'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: TextFieldForms(
                prefixIcon: Icon(
                  PhosphorIcons.magnifying_glass,
                  size: 28,
                ),
                keyboardType: TextInputType.emailAddress,
                hintText: 'Search',
              ),
            ),
            SizedBox(
              height: 34,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16),
                itemCount: tabList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        this.index = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: this.index == index
                            ? AppColors.kPrimaryColor
                            : AppColors.kGray200,
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: Text(
                        tabList[index],
                        style: TextStyle(
                          color: this.index == index
                              ? Colors.white
                              : AppColors.kQuaternaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                itemCount: listEBook.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final event = listEBook[index];
                  return ItemEbook(
                    image: event.image,
                    title: event.title,
                    date: event.date,
                    name: event.name,
                    isSaved: event.isSaved,
                    onPressed: () {
                      context.push(EbookDetailPage.routePath);
                    },
                    onSaved: () {
                      setState(() {
                        event.isSaved = !event.isSaved;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
