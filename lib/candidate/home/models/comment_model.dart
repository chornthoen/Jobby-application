
class CommentModel{

  CommentModel({
    required this.name,
    required this.image,
    required this.date,
    required this.comment,
    required this.like,
    required this.share,
    required this.isLiked,
  });
   String name;
   String image;
   String date;
   String comment;
   int like;
   int share;
   bool isLiked;
}

//list comment 3 items
List<CommentModel> commentModel = [
  CommentModel(
    name: 'Chorn Thoen',
    image: 'assets/images/thoen.png',
    date: '1h ago',
    comment: 'This is a comment from Chorn Thoen in the event',
    like: 40,
    share: 55,
    isLiked: false,
  ),
  CommentModel(
    name: 'Jerome',
    image: 'assets/images/jerome.png',
    date: '2h ago',
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
    like: 20,
    share: 33,
    isLiked: false,
  ),
  CommentModel(
    name: 'Jenny',
    image: 'assets/images/jenny.png',
    date: '3h ago',
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
    like: 10,
    share: 30,
    isLiked: false,
  ),
];
