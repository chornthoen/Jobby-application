
class OnBoardingModel{

  OnBoardingModel({
    required this.title,
    required this.description,
    required this.image,
  });
  final String title;
  final String description;
  final String image;
}

final List<OnBoardingModel> onBoardingModel = [
  OnBoardingModel(
    title: 'Find your dream job',
    description: 'There are various categories that assist you in finding a job based on your interest.',
    image: 'assets/images/on_boarding_1.png',
  ),
  OnBoardingModel(
    title: 'Join the community',
    description: 'There are various categories that assist you in finding a job based on your interest.',
    image: 'assets/images/on_boarding_2.png',
  ),
  OnBoardingModel(
    title: 'Build your resume',
    description: 'There are various categories that assist you in finding a job based on your interest.',
    image: 'assets/images/on_boarding_3.png',
  ),
  OnBoardingModel(
    title: 'Start your work!',
    description: 'There are various categories that assist you in finding a job based on your interest.',
    image: 'assets/images/on_boarding_4.png',
  ),
];
