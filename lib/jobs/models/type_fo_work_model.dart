class TypeOfWorkModel {

  TypeOfWorkModel({
    this.position,
    this.isClick,
  });
  final String? position;
  bool? isClick;
}

final typeOfWorkModel = [
  TypeOfWorkModel(
    position: 'Full Time',
    isClick: false,
  ),
  TypeOfWorkModel(
    position: 'Part Time',
    isClick: false,
  ),
  TypeOfWorkModel(
    position: 'Contract',
    isClick: false,
  ),
  TypeOfWorkModel(
    position: 'Remote',
    isClick: false,
  ),
  TypeOfWorkModel(
    position: 'Freelance',
    isClick: false,
  ),
  TypeOfWorkModel(
    position: 'Internship',
    isClick: false,
  ),
  TypeOfWorkModel(
    position: 'Temporary',
    isClick: false,
  ),
  TypeOfWorkModel(
    position: 'Onsite',
    isClick: false,
  ),
  TypeOfWorkModel(
    position: 'Other',
    isClick: false,
  ),
];
