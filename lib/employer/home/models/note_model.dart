
class NoteModel {

  NoteModel({
    required this.image,
    required this.name,
    required this.date,
    required this.note,
  });
  final String image;
  final String name;
  final String date;
  late final String note;
}

final List<NoteModel> listNote = [
  NoteModel(
    image: 'assets/images/rose.png',
    name: 'Rose Doe',
    date: '12/12/2021',
    note: 'This is a note, you can edit or delete this note by clicking the'
        ' icon on the right',
  ),
  NoteModel(
    image: 'assets/images/thoen.png',
    name: 'John Doe',
    date: '12/12/2021',
    note: 'This is a note, you can edit or delete this note by clicking '
        'the icon on the right',
  ),
  NoteModel(
    image: 'assets/images/rose.png',
    name: 'John Doe',
    date: '12/12/2021',
    note: 'Lorem ipsum dolor sit amet',
  ),
];
