import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/employer/home/models/note_model.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/item_notes.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class TabTimelineAndNote extends StatefulWidget {
  const TabTimelineAndNote({Key? key}) : super(key: key);

  @override
  State<TabTimelineAndNote> createState() => _TabTimelineAndNoteState();
}

class _TabTimelineAndNoteState extends State<TabTimelineAndNote>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(3),
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(2),
                bottomLeft: Radius.circular(2),
              ),
              boxShadow: [
                AppColors.kBoxShadowColor1,
                AppColors.kBoxShadowColor,
              ],
            ),
            child: TabBar(
              controller: _tabController,
              indicator: const BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(2),
                  bottomLeft: Radius.circular(2),
                ),
              ),
              labelColor: AppColors.kWhiteColor,
              unselectedLabelColor: AppColors.kBlackColor,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              tabs: const [
                Tab(text: 'Timeline'),
                Tab(text: 'Notes'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                TabTimeline(),
                TabNotes(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabTimeline extends StatefulWidget {
  const TabTimeline({Key? key}) : super(key: key);

  @override
  State<TabTimeline> createState() => _TabTimelineState();
}

class _TabTimelineState extends State<TabTimeline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '12/May/2021',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kBlackColor,
                ),
              ),
              Spacer(),
              IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: Icon(
                  PhosphorIcons.caret_down_bold,
                  size: 20,
                  color: AppColors.kTertiaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 2,
                height: 40,
                color: AppColors.kPrimaryColor,
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    '9:00 AM',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                  Text(
                    '9:00 AM',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                  Text(
                    '9:00 AM',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}

class TabNotes extends StatefulWidget {
  const TabNotes({Key? key}) : super(key: key);

  @override
  State<TabNotes> createState() => _TabNotesState();
}

class _TabNotesState extends State<TabNotes> {
  late TextEditingController _noteController;
  late TextEditingController _editingController;

  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController();
    _editingController = TextEditingController();
  }

  @override
  void dispose() {
    _noteController.dispose();
    _editingController.dispose();
    super.dispose();
  }

  //function delete note
  void deleteNote(int index) {
    setState(() {
      listNote.removeAt(index);
    });
  }

  //function save note
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

  //function edit note
  void editNote(int index) {
    setState(() {
      _editingController.text = listNote[index].note;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  onEdit: () {
                    _editingController.text = listNote[index].note;
                    _showBottomSheetEditNote(
                      index,
                    );
                  },
                  onDelete: () {
                    deleteNote(index);
                  },
                );
              },
            ),
            TextButton.icon(
              icon: const Icon(
                PhosphorIcons.plus_circle,
                size: 20,
                color: AppColors.kTertiaryColor,
              ),
              onPressed: _showBottomSheetAddNote,
              label: const Text(
                'Add Note',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kTertiaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //show bottom sheet add note
  void _showBottomSheetAddNote() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.kBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarBottomSheet(
                  title: 'Add Note',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 10),
                const Text(
                  'Note',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kBlackColor,
                  ),
                ),
                const SizedBox(height: 10),
                TextFieldForms(
                  controller: _noteController,
                  hintText: 'Type your note here',
                  maxLines: 5,
                  minLines: 5,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonOutLineAction(
                      width: 120,
                      text: 'Cancel',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(width: 10),
                    ButtonAction(
                      isClick: true,
                      width: 120,
                      text: 'Save',
                      onPressed: () {
                        saveNote(_noteController.text);
                        _noteController.clear();
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showBottomSheetEditNote(int index) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarBottomSheet(
                  title: 'Add Note',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 10),
                const Text(
                  'Note',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kBlackColor,
                  ),
                ),
                const SizedBox(height: 10),
                TextFieldForms(
                  controller: _editingController,
                  hintText: 'Type your note here',
                  maxLines: 5,
                  minLines: 5,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonOutLineAction(
                      width: 120,
                      text: 'Cancel',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(width: 10),
                    ButtonAction(
                      isClick: true,
                      width: 120,
                      text: 'Save',
                      onPressed: () {
                        listNote[index].note = _editingController.text;
                        _editingController.clear();
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}
