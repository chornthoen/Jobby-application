
class OverviewModel{
  final String title;
  final String value;
  final String percent;
  final bool isUp;

  const OverviewModel({
    required this.title,
    required this.value,
    required this.percent,
    required this.isUp,
  });
}

final List<OverviewModel> listOverview = [
  OverviewModel(
    title: 'Total jobs',
    value: '130',
    percent: '4.4%',
    isUp: false,
  ),
  OverviewModel(
    title: 'Job views',
    value: '102',
    percent: '2.7%',
    isUp: true,
  ),
  OverviewModel(
    title: 'Job applies',
    value: '100',
    percent: '9.5%',
    isUp: true,
  ),
  OverviewModel(
    title: 'Candidates',
    value: '200',
    percent: '10%',
    isUp: true,
  ),
];
