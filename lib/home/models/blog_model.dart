
class BlogModel {

  BlogModel({
    required this.title,
    required this.image,
    required this.date,
    required this.readTime,
    required this.isSaved,
  });
  String title;
  String image;
  String date;
  int readTime;
  bool isSaved;
}

//list blog 6 item
List<BlogModel> listBlog = [
  BlogModel(
    title: 'Market Insight – See salary, understand your favorite job position',
    image: 'assets/images/blog1.png',
    date: '20/10/2021',
    readTime: 5,
    isSaved: false,
  ),
  BlogModel(
    title: 'How to get a job at Google. Google is known for its challenging interview questions',
    image: 'assets/images/blog2.png',
    date: '20/10/2021',
    readTime: 7,
    isSaved: false,
  ),
  BlogModel(
    title: 'Market Insight – See salary, understand your favorite job position',
    image: 'assets/images/blog3.png',
    date: '20/10/2021',
    readTime: 8,
    isSaved: false,
  ),
  BlogModel(
    title: 'How to get a job at Google – Google is known for its challenging interview questions',
    image: 'assets/images/blog4.png',
    date: '20/10/2021',
    readTime: 44,
    isSaved: false,
  ),
  BlogModel(
    title: 'How to get a job at Google',
    image: 'assets/images/blog5.png',
    date: '20/10/2021',
    readTime: 6,
    isSaved: false,
  ),
  BlogModel(
    title: 'How to get a job at Google How to get a job at Google Hello',
    image: 'assets/images/blog6.png',
    date: '20/10/2021',
    readTime: 53,
    isSaved: false,
  ),
];

