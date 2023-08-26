
class EventModel {
  EventModel({
    required this.title,
    required this.image,
    required this.date,
    required this.countUser,
    required this.status,
    required this.day,
    required this.month,
    required this.isSaved,
  });

  String title;
  String image;
  String date;
  String countUser;
  String status;
  String day;
  String month;
  bool isSaved;
}

//list event 6 items
List<EventModel> eventModel = [

  EventModel(
    title: 'Performance evaluation review, Performance evaluation review',
    image: 'assets/images/events1.png',
    date: '20/10/2021',
    countUser: '20 - 30',
    status: 'Open',
    day: '20',
    month: 'Oct',
    isSaved: false,
  ),
  EventModel(
    title: 'Performance evaluation review, How to get a job at Google',
    image: 'assets/images/events2.png',
    date: '20/10/2021',
    countUser: '230 - 303',
    status: 'Now',
    day: '20',
    month: 'Oct',
    isSaved: false,
  ),

  EventModel(
    title: 'Performance evaluation review is known for its challenging'
        ' interview questions',
    image: 'assets/images/events3.png',
    date: '20/10/2021',
    countUser: '20 - 310',
    status: 'Upcoming',
    day: '20',
    month: 'May',
    isSaved: false,
  ),
  EventModel(
    title: 'Performance evaluation review is known for its challenging '
        'interview questions',
    image: 'assets/images/events4.png',
    date: '20/10/2021',
    countUser: '20 - 30',
    status: 'Now',
    day: '24',
    month: 'Jun',
    isSaved: false,
  ),
  EventModel(
    title: 'Performance evaluation review',
    image: 'assets/images/events5.png',
    date: '20/10/2021',
    countUser: '20 - 30',
    status: 'Open',
    day: '20',
    month: 'Oct',
    isSaved: false,
  ),
  EventModel(
    title: 'Performance evaluation review best interview questions',
    image: 'assets/images/events4.png',
    date: '20/10/2021',
    countUser: '20 - 30',
    status: 'Open',
    day: '20',
    month: 'Oct',
    isSaved: false,
  ),
];
