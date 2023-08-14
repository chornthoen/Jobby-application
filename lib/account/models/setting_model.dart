class SettingModel {
  const SettingModel({
    required this.title,
    required this.icon,
    required this.id,
  });

  final int id;
  final String title;
  final String icon;
}

//list setting 3 item
List<SettingModel> listSetting = [
  const SettingModel(
    id: 1,
    title: 'Your Jobby profile',
    icon: 'assets/svg/user.svg',
  ),
  const SettingModel(
    id: 2,
    title: 'Manage CV',
    icon: 'assets/svg/folders.svg',
  ),
  const SettingModel(
    id: 3,
    title: 'Your work criteria',
    icon: 'assets/svg/viewfinder.svg',
  ),
  const SettingModel(
    id: 4,
    title: 'Change account',
    icon: 'assets/svg/exchange.svg',
  ),
  const SettingModel(
    id: 5,
    title: 'ID identification',
    icon: 'assets/svg/id.svg',
  ),
  const SettingModel(
    id: 6,
    title: 'Share with your friend',
    icon: 'assets/svg/share.svg',
  ),
  const SettingModel(
    id: 7,
    title: 'Account setting',
    icon: 'assets/svg/setting.svg',
  ),
  const SettingModel(
    id: 8,
    title: 'About Jobby',
    icon: 'assets/svg/info.svg',
  ),
  const SettingModel(
    id: 9,
    title: 'Log out',
    icon: 'assets/svg/logout.svg',
  ),
];

List<SettingModel> listSettingEmployer = [
  const SettingModel(
    id: 1,
    title: 'Company Profile',
    icon: 'assets/svg/user.svg',
  ),
  const SettingModel(
    id: 2,
    title: 'Change account',
    icon: 'assets/svg/exchange.svg',
  ),
  const SettingModel(
    id: 3,
    title: 'Member',
    icon: 'assets/svg/user-add.svg',
  ),
  const SettingModel(
    id: 4,
    title: 'Service Packages',
    icon: 'assets/svg/diamond.svg',
  ),

  const SettingModel(
    id: 5,
    title: 'ID identification',
    icon: 'assets/svg/id.svg',
  ),
  const SettingModel(
    id: 6,
    title: 'Share with your friend',
    icon: 'assets/svg/share.svg',
  ),
  const SettingModel(
    id: 7,
    title: 'Account setting',
    icon: 'assets/svg/setting.svg',
  ),
  const SettingModel(
    id: 8,
    title: 'About Jobby',
    icon: 'assets/svg/info.svg',
  ),
  const SettingModel(
    id: 9,
    title: 'Log out',
    icon: 'assets/svg/logout.svg',
  ),
];

