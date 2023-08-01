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
  SettingModel(
    id: 2,
    title: 'Manage CV',
    icon: 'assets/svg/folders.svg',
  ),
  SettingModel(
    id: 3,
    title: 'Your work criteria',
    icon: 'assets/svg/viewfinder.svg',
  ),
  SettingModel(
    id: 4,
    title: 'ID identification',
    icon: 'assets/svg/id.svg',
  ),
  SettingModel(
    id: 5,
    title: 'Share with your friend',
    icon: 'assets/svg/share.svg',
  ),
  SettingModel(
    id: 6,
    title: 'Account setting',
    icon: 'assets/svg/setting.svg',
  ),
  SettingModel(
    id: 7,
    title: 'About Jobby',
    icon: 'assets/svg/info.svg',
  ),
  SettingModel(
    id: 8,
    title: 'Log out',
    icon: 'assets/svg/logout.svg',
  ),
];
