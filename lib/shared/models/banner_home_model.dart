class BannerHomeModel {

  BannerHomeModel({
    required this.image,
    required this.title,
    required this.description,
  });
  String image;
  String title;
  String description;
}

//list banner 4 item
List<BannerHomeModel> listBanner = [
  BannerHomeModel(
    image: 'assets/images/woman.png',
    title: '15 days free trial',
    description: 'for any courses',
  ),
  BannerHomeModel(
    image: 'assets/images/woman.png',
    title: 'Get 10% off',
    description: 'for any courses',
  ),
  BannerHomeModel(
    image: 'assets/images/woman.png',
    title: '50% off',
    description: 'for any courses',
  ),
  BannerHomeModel(
    image: 'assets/images/woman.png',
    title: '5 days free trial',
    description: 'for any courses',
  ),
];
