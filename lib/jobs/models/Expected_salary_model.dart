class ExpectedSalaryModel {

  ExpectedSalaryModel({
    this.position,
    this.isClick,
  });
  final String? position;
  bool? isClick;
}

final expectedSalaryModel = [
  ExpectedSalaryModel(
    position: r'<$500',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: r'$500 - $1000',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: r'$1000 - $1500',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: r'$1500 - $2000',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: r'$2000 - $2500',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: r'$2500 - $3000',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: r'$3000 - $3500',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: r'$3500 - $4000',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: r'> $4000',
    isClick: false,
  ),
];
