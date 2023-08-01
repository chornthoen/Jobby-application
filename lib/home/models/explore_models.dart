
class ExploreModel{

  ExploreModel({
    required this.title,
    required this.description,
    required this.image,
    required this.id,
  });
  int id;
  String title;
  String description;
  String image;


}
//list explore 3 item
List<ExploreModel> listExplore = [
  ExploreModel(
    id: 1,
    title: 'Blogs',
    description: 'Update articles on skills, knowledge and multi trends',
    image: 'assets/images/blog.png',
  ),
  ExploreModel(
    id: 2,
    title: 'Events',
    description: 'Follow news about our exclusive events',
    image: 'assets/images/event.png',
  ),
  ExploreModel(
    id: 3,
    title: 'Ebooks',
    description: 'Discover and download the latest and greatest ebooks',
    image: 'assets/images/ebook.png',
  ),
];
