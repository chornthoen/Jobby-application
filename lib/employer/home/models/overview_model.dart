
class OverviewModel{

  const OverviewModel({
    required this.title,
    required this.value,
    required this.percent,
    required this.isUp,
  });
  final String title;
  final String value;
  final String percent;
  final bool isUp;
}

final List<OverviewModel> listOverview = [
  const OverviewModel(
    title: 'Total jobs',
    value: '130',
    percent: '4.4%',
    isUp: false,
  ),
  const OverviewModel(
    title: 'Job views',
    value: '102',
    percent: '2.7%',
    isUp: true,
  ),
  const OverviewModel(
    title: 'Job applies',
    value: '100',
    percent: '9.5%',
    isUp: true,
  ),
  const OverviewModel(
    title: 'Candidates',
    value: '200',
    percent: '10%',
    isUp: true,
  ),
];
