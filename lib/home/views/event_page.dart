import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  static const String routePath = '/eventPage';

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Events',
      ),
    );
  }
}
