class IndustryModel {

  IndustryModel({
    this.position,
    this.isClick,
  });
  final String? position;
  bool? isClick;
}

final industryModel = [
  IndustryModel(
    position: 'Real Estate',
    isClick: false,
  ),
  IndustryModel(
    position: 'Travel',
    isClick: false,
  ),
  IndustryModel(
    position: 'Entertainment',
    isClick: false,
  ),
  IndustryModel(
    position: 'Education',
    isClick: false,
  ),
  IndustryModel(
    position: 'Service',
    isClick: false,
  ),
  IndustryModel(
    position: 'Multimedia',
    isClick: false,
  ),
  IndustryModel(
    position: 'Health',
    isClick: false,
  ),
  IndustryModel(
    position: 'Finance',
    isClick: false,
  ),
  IndustryModel(
    position: 'Other',
    isClick: false,
  ),
];

class PeopleModel {
  PeopleModel({ this.position, this.isClick});

  String? position;
  bool? isClick;
}

final peopleModel = [
  PeopleModel(
    position: '1-10',
    isClick: false,
  ),
  PeopleModel(
    position: '11-50',
    isClick: false,
  ),
  PeopleModel(
    position: '51-200',
    isClick: false,
  ),
  PeopleModel(
    position: '201-500',
    isClick: false,
  ),
  PeopleModel(
    position: '501-1000',
    isClick: false,
  ),
  PeopleModel(
    position: '1001-5000',
    isClick: false,
  ),
  PeopleModel(
    position: '5001-10000',
    isClick: false,
  ),
  PeopleModel(
    position: '10001+',
    isClick: false,
  ),
];
