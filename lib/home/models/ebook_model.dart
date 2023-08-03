
class EBookModel {

  EBookModel({
    required this.title,
    required this.image,
    required this.date,
    required this.name,
    required this.isSaved,
  });

  String title;
  String image;
  String date;
  String name;
  bool isSaved;

}

//list event 6 item
List<EBookModel> listEBook = [
  EBookModel(
    title: 'Performance evaluation review',
    image: 'assets/images/event1.png',
    date: '20/10/2021',
    name: 'Google',
    isSaved: false,
  ),
  EBookModel(
    title: 'Google is known for its challenging interview questions',
    image: 'assets/images/event2.png',
    date: '20/10/2021',
    name: 'Google',
    isSaved: false,
  ),
  EBookModel(
    title: 'Market Insight – See salary',
    image: 'assets/images/event3.png',
    date: '20/10/2021',
    name: 'Google',
    isSaved: false,
  ),
  EBookModel(
    title: 'Performance evaluation review',
    image: 'assets/images/event4.png',
    date: '20/10/2021',
    name: 'Google',
    isSaved: false,
  ),
  EBookModel(
    title: 'How to get a job at Google',
    image: 'assets/images/event2.png',
    date: '20/10/2021',
    name: 'Google',
    isSaved: false,
  ),
  EBookModel(
    title: 'Performance evaluation review',
    image: 'assets/images/event1.png',
    date: '20/10/2021',
    name: 'Google',
    isSaved: false,
  ),
];
