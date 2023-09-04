
class TabCompanyModel{

  TabCompanyModel({
    required this.nameCompany,
    required this.imageCompany,
    required this.locationCompany,
    required this.totalJob,
    required this.status1,
    required this.status2,
    required this.status3,
  });
  String nameCompany;
  String imageCompany;
  String locationCompany;
  String totalJob;
  String status1;
  String status2;
  String status3;
}

//list company for you 3 item
List<TabCompanyModel> tabCompanyModel = [
  TabCompanyModel(
    nameCompany: 'Google',
    imageCompany: 'assets/images/google_3d.png',
    locationCompany: 'Phnom Penh',
    totalJob: '200',
    status1: 'IT',
    status2: 'AI',
    status3: 'Python',
  ),
  TabCompanyModel(
    nameCompany: 'Facebook',
    imageCompany: 'assets/images/facebook_3d.png',
    locationCompany: 'Phnom Penh',
    totalJob: '90',
    status1: 'IT',
    status2: 'AI',
    status3: 'JAVA',
  ),
  TabCompanyModel(
    nameCompany: 'Slack',
    imageCompany: 'assets/images/slack_3d.png',
    locationCompany: 'Phnom Penh',
    totalJob: '200',
    status1: 'AI',
    status2: 'IT',
    status3: 'Design',
  ),
  TabCompanyModel(
    nameCompany: 'Spotify',
    imageCompany: 'assets/images/spotify.png',
    locationCompany: 'Phnom Penh',
    totalJob: '90',
    status1: 'IT',
    status2: 'AI',
    status3: 'Design',
  ),
];
