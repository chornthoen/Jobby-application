import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/home/models/event_models.dart';
import 'package:jobby_application/home/views/event_detail_page.dart';
import 'package:jobby_application/home/widgets/item_event.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  static const String routePath = '/eventPage';

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
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
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: TextFieldForms(
                      prefixIcon: Icon(
                        PhosphorIcons.magnifying_glass,
                        size: 28,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'Search',
                    ),
                  ),
                  IconButton(
                    splashRadius: 24,
                    onPressed: () {},
                    icon: const Icon(
                      PhosphorIcons.faders,
                      size: 28,
                    ),
                  ),
                ],
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
            ListView.builder(
              itemCount: eventModel.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final event = eventModel[index];
                return ItemEvent(
                  image: event.image,
                  title: event.title,
                  date: event.date,
                  day: event.day,
                  month: event.month,
                  count: event.countUser,
                  status: event.status,
                  isSaved: event.isSaved,
                  onPressed: () {
                    context.push(EventDetailPage.routePath);
                  },
                  onSaved: () {
                    setState(() {
                      event.isSaved = !event.isSaved;
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
