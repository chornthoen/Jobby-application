
class InterestedModel{

  InterestedModel({
    required this.image,
    required this.name,
    required this.location,
    required this.isFollow,
  });

  String image;
  String name;
  String location;
  bool isFollow;
}

//list 4
List<InterestedModel> interestedModel = [
  InterestedModel(
    image: 'assets/images/google_3d.png',
    name: 'Google',
    location: 'California, USA',
    isFollow: false,
  ),
  InterestedModel(
    image: 'assets/images/facebook.png',
    name: 'Facebook',
    location: 'California, USA',
    isFollow: false,
  ),
  InterestedModel(
    image: 'assets/images/x.png',
    name: 'Twitter',
    location: 'California, USA',
    isFollow: false,
  ),
  InterestedModel(
    image: 'assets/images/youtube.png',
    name: 'Youtube',
    location: 'California, USA',
    isFollow: false,
  ),
];
