
class ExpectedSalaryModel {
  final String? position;
  bool? isClick;

  ExpectedSalaryModel({
    this.position,
    this.isClick,
  });
}

final expectedSalaryModel = [
  ExpectedSalaryModel(
    position: '<\$500',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: '\$500 - \$1000',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: '\$1000 - \$1500',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: '\$1500 - \$2000',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: '\$2000 - \$2500',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: '\$2500 - \$3000',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: '\$3000 - \$3500',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: '\$3500 - \$4000',
    isClick: false,
  ),
  ExpectedSalaryModel(
    position: '> \$4000',
    isClick: false,
  ),
];
