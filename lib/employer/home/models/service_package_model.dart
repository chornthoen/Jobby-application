

class ServicePackageModel {
  const ServicePackageModel({
    required this.title,
    required this.diamond,
    required this.price,
  });

  final String title;
  final String diamond;
  final String price;
}

final servicePackageList = [
  const ServicePackageModel(
    title: 'Basic',
    diamond: '1000',
    price: '100.00',
  ),
  const ServicePackageModel(
    title: 'Standard',
    diamond: '2000',
    price: '250.00',
  ),
  const ServicePackageModel(
    title: 'Premium',
    diamond: '3000',
    price: '200.00',
  ),
  const ServicePackageModel(
    title: 'Gold',
    diamond: '4000',
    price: '300.00',
  ),
  const ServicePackageModel(
    title: 'Diamond',
    diamond: '5000',
    price: '400.00',
  ),
];
