

class GiftModel {
  GiftModel({
    required this.title,
    required this.description,
    required this.date,
    required this.status,
  });

  final String title;
  final String description;
  final String date;
  final String status;
}
final List<GiftModel> giftList = [
  GiftModel(
    title: '100% OFF',
    description: 'Applies to first purchase',
    date: '31 Dec 2024',
    status: 'Use It',
  ),
  GiftModel(
    title: '80% OFF',
    description: 'Applies to first purchase',
    date: '31 Dec 2023',
    status: 'Use It',
  ),
  GiftModel(
    title: '88% OFF',
    description: 'Applies to first purchase',
    date: '31 Dec 2022',
    status: 'Use It',
  ),
  GiftModel(
    title: '10% OFF',
    description: 'Applies to first purchase',
    date: '31 Dec 2021',
    status: 'Use It',
  ),
  GiftModel(
    title: '14% OFF',
    description: 'Applies to first purchase',
    date: '31 Dec 2021',
    status: 'Use It',
  ),
  GiftModel(
    title: '20% OFF',
    description: 'Applies to first purchase',
    date: '31 Dec 2025',
    status: 'Use It',
  ),
];
