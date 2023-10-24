import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/models/ebook_model.dart';
import 'package:jobby_application/candidate/home/views/ebook_detail_page.dart';
import 'package:jobby_application/candidate/home/widgets/item_ebook.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';

class EBookPage extends StatefulWidget {
  const EBookPage({super.key});

  static const String routePath = '/eBookPage';

  @override
  State<EBookPage> createState() => _EBookPageState();
}

class _EBookPageState extends State<EBookPage> {
  List<String> tabList = ['All', 'Knowledges', 'Skills', 'Design', 'Marketing'];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Events'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.sm,
              ),
              child: CustomTextFieldForms(
                prefixIcon: Icon(
                  PhosphorIcons.magnifying_glass,
                  size: AppSpacing.xlg,
                ),
                keyboardType: TextInputType.emailAddress,
                hintText: 'Search',
              ),
            ),
            SizedBox(
              height: AppSpacing.xxlg,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: AppSpacing.lg),
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
                      margin: const EdgeInsets.only(right: AppSpacing.md),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.lg,
                        vertical: AppSpacing.sm,
                      ),
                      decoration: BoxDecoration(
                        color: this.index == index
                            ? AppColors.kPrimaryColor
                            : AppColors.kColorGray200,
                        borderRadius: BorderRadius.circular(AppSpacing.xxlg),
                      ),
                      child: Text(
                        tabList[index],
                        style: TextStyle(
                          color: this.index == index
                              ? Colors.white
                              : AppColors.kColorGray600,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
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
                    onPressed: () => context.push(EbookDetailPage.routePath),
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
