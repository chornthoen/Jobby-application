import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/employer/home/models/note_model.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/item_notes.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class TabNotes extends StatefulWidget {
  const TabNotes({super.key});

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
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheetAddNote() {
    showModalBottomSheet<void>(
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
                CustomTextFieldForms(
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
                    CustomElevatedButton(
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
    showModalBottomSheet<void>(
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
                CustomTextFieldForms(
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
                    CustomElevatedButton(
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
