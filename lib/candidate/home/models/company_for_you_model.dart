
class CompanyModel{

  CompanyModel({
    required this.title,
    required this.description,
    required this.image,
  });
  final String title;
  final String description;
  final String image;
}

//list company for you 5 item
List<CompanyModel> listCompany = [
  CompanyModel(
    title: 'Google',
    description: '200 jobs',
    image: 'assets/images/google_3d.png',
  ),
  CompanyModel(
    title: 'Facebook',
    description: '90 jobs',
    image: 'assets/images/facebook_3d.png',
  ),
  CompanyModel(
    title: 'Slack',
    description: '200 jobs',
    image: 'assets/images/slack_3d.png',
  ),
  CompanyModel(
    title: 'Spotify',
    description: '90 jobs',
    image: 'assets/images/spotify.png',
  ),
  CompanyModel(
    title: 'Twitter',
    description: '200 jobs',
    image: 'assets/images/x.png',
  ),
  CompanyModel(
    title: 'YouTube',
    description: '200 jobs',
    image: 'assets/images/youtube.png',
  ),
  CompanyModel(
    title: 'WhatsApp',
    description: '200 jobs',
    image: 'assets/images/whatsapp.png',
  ),
  CompanyModel(
    title: 'Google',
    description: '200 jobs',
    image: 'assets/images/google_3d.png',
  ),
  CompanyModel(
    title: 'Facebook',
    description: '90 jobs',
    image: 'assets/images/facebook_3d.png',
  ),
  CompanyModel(
    title: 'Slack',
    description: '200 jobs',
    image: 'assets/images/slack_3d.png',
  ),
];
