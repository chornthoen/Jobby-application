import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/employer/home/models/note_model.dart';
import 'package:jobby_application/employer/home/widgets/item_info.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/item_notes.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';

class CandidateDetailPage extends StatefulWidget {
  const CandidateDetailPage({super.key});

  static const String routePath = '/candidate_detail_page';

  @override
  State<CandidateDetailPage> createState() => _CandidateDetailPageState();
}

class _CandidateDetailPageState extends State<CandidateDetailPage> {
  late TextEditingController addNoteController;

  @override
  void initState() {
    super.initState();
    addNoteController = TextEditingController();
  }

  @override
  void dispose() {
    addNoteController.dispose();
    super.dispose();
  }

  void saveNote(String note) {
    setState(() {
      listNote.add(
        NoteModel(
          image: 'assets/images/thoen.png',
          name: 'John Doe',
          date: '12/12/2021',
          note: note,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: CustomAppBar(
        title: 'Candidate Detail',
        iconLeft: Icons.more_horiz,
        onTapLeft: () {},
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: AppSpacing.xxlg,
                    backgroundImage: AssetImage('assets/images/rose.png'),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Rose',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      const Text(
                        'Apple job: UI/UX Designer',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.kColorGray600,
                        ),
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            const Icon(
                              Icons.star,
                              color: AppColors.kOrangeColor400,
                              size: AppSpacing.xlg,
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.lg),
              ButtonOutLineAction(
                text: 'View Resume',
                height: AppSpacing.xxxlg,
                onPressed: () {},
              ),
              const SizedBox(height: AppSpacing.md),
              const Text(
                'Information',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              const ItemInfo(
                label: 'Job title',
                value: 'Mobile Developer',
              ),
              const ItemInfo(
                label: 'Phone',
                value: '069 997 502',
              ),
              const ItemInfo(
                label: 'Email',
                value: 'thoenchorn@gmail.com',
              ),
              const ItemInfo(
                label: 'Gender',
                value: 'Male',
              ),
              const ItemInfo(
                label: 'Address',
                value: 'Songkat Boeng Keng Kang 1, Khan Chamkarmon, Phnom Penh',
              ),
              const ItemInfo(
                label: 'Website',
                value: 'https://www.thoenchorn.com',
              ),
              const ItemInfo(
                label: 'Career Goals',
                value: 'I want to be a good Mobile Developer',
              ),
              const ItemInfo(
                label: 'Work Experience',
                value: '2 years',
              ),
              const ItemInfo(
                label: 'Skills',
                value: 'Flutter, Dart, Java, Kotlin, Swift, Objective-C',
              ),
              const ItemInfo(
                label: 'Education',
                value: 'Bachelor Degree of Computer Science',
              ),
              const ItemInfo(
                label: 'Language',
                value: 'Khmer, English',
              ),
              const ItemInfo(
                label: 'Prize',
                value: '1st place in Flutter Hackathon 2021',
              ),
              const ItemInfo(
                label: 'Hobby',
                value: 'Reading, Playing Game, Watching Movie',
              ),
              const Text(
                'Hiring',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              const Text(
                'Owner',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kColorGray600,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              const Row(
                children: [
                  CircleAvatar(
                    radius: AppSpacing.xlg,
                    backgroundImage: AssetImage('assets/images/rose.png'),
                  ),
                  SizedBox(width: AppSpacing.sm),
                  Text(
                    'Rose',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              const Text(
                'Date',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kColorGray600,
                ),
              ),
              const Text(
                '12/12/2021',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Notes',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton.icon(
                    icon: const Icon(
                      PhosphorIcons.plus_circle,
                      size: AppSpacing.xlg - 4,
                      color: AppColors.kColorGray700,
                    ),
                    onPressed: () {
                      ShowBottomSheetCustom.showBottomSheetAddNote(
                        context: context,
                        noteController: addNoteController,
                        saveNote: () {
                          saveNote(addNoteController.text);
                          addNoteController.clear();
                          Navigator.pop(context);
                        },
                      );
                    },
                    label: const Text(
                      'Add Note',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kColorGray700,
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                itemCount: listNote.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ItemNotes(
                    image: listNote[index].image,
                    name: listNote[index].name,
                    date: listNote[index].date,
                    note: listNote[index].note,
                    onEdit: () {},
                    onDelete: () {},
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
