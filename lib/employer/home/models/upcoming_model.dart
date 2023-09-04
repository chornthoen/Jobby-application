
class UpcomingModel{

  const UpcomingModel({
    required this.title,
    required this.description,
    required this.date,
  });
  final String title;
  final String description;
  final String date;
}

final List<UpcomingModel> listUpcoming = [
  const UpcomingModel(
    title: 'Software Engineer',
    description: 'Apply a Product Manager position',
    date: 'Today, 10:00 AM',
  ),
  const UpcomingModel(
    title: 'Mobile Developer',
    description: 'Apply a Product Manager position',
    date: 'Today, 03:00 PM',
  ),
];
