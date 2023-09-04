
class SpeakerListModel{
  final String name;
  final String image;
  final String description;

  SpeakerListModel({
    required this.name,
    required this.image,
    required this.description,
  });
}

//list speaker 3 items
List<SpeakerListModel> speakerModel = [
  SpeakerListModel(
    name: 'Chorn Thoen',
    image: 'assets/images/thoen.png',
    description: 'Lorem ipsum dolor sit amet,',
  ),
  SpeakerListModel(
    name: 'Facebook',
    image: 'assets/images/facebook.png',
    description: 'Lorem ipsum dolor sit amet,',
  ),
  SpeakerListModel(
    name: 'Rose',
    image: 'assets/images/rose.png',
    description: 'Lorem ipsum dolor sit amet,',
  ),
];
