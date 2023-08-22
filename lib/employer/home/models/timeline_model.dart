
class TimelineModel{
  final String timePause;
  final String timeShow;
  final String image;
  final String name;

  TimelineModel({
    required this.timePause,
    required this.timeShow,
    required this.image,
    required this.name,
  });
}

final List<TimelineModel> listTimeline = [
  TimelineModel(
    timePause: '12:00',
    timeShow: '12:30',
    image: 'assets/images/thoen.png',
    name: 'John Doe',
  ),
  TimelineModel(
    timePause: '12:00',
    timeShow: '12:30',
    image: 'assets/images/thoen.png',
    name: 'John Doe',
  ),
  TimelineModel(
    timePause: '12:00',
    timeShow: '12:30',
    image: 'assets/images/thoen.png',
    name: 'John Doe',
  ),

];
