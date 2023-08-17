import 'package:flutter/material.dart';

class TabTimelineAndNote extends StatefulWidget {
  const TabTimelineAndNote({Key? key}) : super(key: key);

  @override
  State<TabTimelineAndNote> createState() => _TabTimelineAndNoteState();
}

class _TabTimelineAndNoteState extends State<TabTimelineAndNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Timeline and Note'),
      )
    );
  }
}
