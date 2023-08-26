
class JobShowingModel {

  JobShowingModel({
    required this.title,
    required this.location,
    required this.jobType,
    required this.salary,
    required this.candidate,
    this.isPaused = false,
    this.isExpired = false,
  });
  final String title;
  final String location;
  final String jobType;
  final String salary;
  final String candidate;
  final bool? isPaused;
  final bool? isExpired;
}
class JobPendingModel {
  JobPendingModel({
    required this.title,
    required this.status,
  });
  final String title;
  final String status;
}

List<JobShowingModel> listJobExpire = [
  JobShowingModel(
    title: 'Senior UI/UX Designer',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
    isExpired: true,

  ),
  JobShowingModel(
    title: 'Mobile Developer (Flutter)',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 1000',
    candidate: '22',
    isExpired: true,
  ),
  JobShowingModel(
    title: 'Frontend Developer (ReactJS)',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
    isExpired: true,
  ),
  JobShowingModel(
    title: 'Web Developer',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
    isExpired: true,
  ),
  JobShowingModel(
    title: 'Full Stack Developer (NodeJS)',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
    isExpired: true,
  ),
  JobShowingModel(
    title: 'Backend Developer (NodeJS)',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
    isExpired: true,
  ),
];
List<JobShowingModel> listJobShowing = [
  JobShowingModel(
    title: 'Senior UI/UX Designer',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
  ),
  JobShowingModel(
    title: 'Mobile Developer (Flutter)',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 1000',
    candidate: '22',
  ),
  JobShowingModel(
    title: 'Frontend Developer (ReactJS)',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
  ),
  JobShowingModel(
    title: 'Web Developer',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
  ),
  JobShowingModel(
    title: 'Full Stack Developer (NodeJS)',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
  ),
  JobShowingModel(
    title: 'Backend Developer (NodeJS)',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
  ),
];
List<JobShowingModel> listJobPaused = [
  JobShowingModel(
    title: 'Senior UI/UX Designer',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
    isPaused: true,
  ),
  JobShowingModel(
    title: 'Mobile Developer (Flutter)',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 1000',
    candidate: '22',
    isPaused: true,
  ),
  JobShowingModel(
    title: 'Frontend Developer (ReactJS)',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
    isPaused: true,
  ),
  JobShowingModel(
    title: 'Web Developer',
    location: 'Phnom Penh',
    jobType: 'Full Time',
    salary: r'$ 500 - $ 800',
    candidate: '2',
    isPaused: true,
  ),

];

List<JobPendingModel> listJobRejected = [
  JobPendingModel(
    title: 'Senior UI/UX Designer',
    status: 'Rejected',
  ),
  JobPendingModel(
    title: 'Mobile Developer (Flutter)',
    status: 'Rejected',
  ),
  JobPendingModel(
    title: 'Frontend Developer (ReactJS)',
    status: 'Rejected',
  ),
  JobPendingModel(
    title: 'Web Developer',
    status: 'Rejected',
  ),
  JobPendingModel(
    title: 'Full Stack Developer (NodeJS)',
    status: 'Rejected',
  ),
  JobPendingModel(
    title: 'Backend Developer (NodeJS)',
    status: 'Rejected',
  ),
  JobPendingModel(
    title: 'Senior UI/UX Designer',
    status: 'Rejected',
  ),
  JobPendingModel(
    title: 'Mobile Developer (Flutter)',
    status: 'Rejected',
  ),
  JobPendingModel(
    title: 'Frontend Developer (ReactJS)',
    status: 'Rejected',
  ),
];

List<JobPendingModel> listJobPending = [
  JobPendingModel(
    title: 'Senior UI/UX Designer',
    status: 'Pending',
  ),
  JobPendingModel(
    title: 'Mobile Developer (Flutter)',
    status: 'Pending',
  ),
  JobPendingModel(
    title: 'Frontend Developer (ReactJS)',
    status: 'Pending',
  ),
  JobPendingModel(
    title: 'Web Developer',
    status: 'Pending',
  ),
  JobPendingModel(
    title: 'Full Stack Developer (NodeJS)',
    status: 'Pending',
  ),
  JobPendingModel(
    title: 'Backend Developer (NodeJS)',
    status: 'Pending',
  ),
  JobPendingModel(
    title: 'Senior UI/UX Designer',
    status: 'Pending',
  ),
  JobPendingModel(
    title: 'Mobile Developer (Flutter)',
    status: 'Pending',
  ),
  JobPendingModel(
    title: 'Frontend Developer (ReactJS)',
    status: 'Pending',
  ),
];


class ActionJobShowingModel {

  ActionJobShowingModel({
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;
}
final listActionJobShowing = [
  ActionJobShowingModel(
    title: 'Delete',
    icon: 'assets/svg/delete.svg',
  ),
  ActionJobShowingModel(
    title: 'Pause',
    icon: 'assets/svg/close.svg',
  ),
  ActionJobShowingModel(
    title: 'Extend',
    icon: 'assets/svg/file-add.svg',
  ),
  ActionJobShowingModel(
    title: 'Edit',
    icon: 'assets/svg/edit.svg',
  ),
  ActionJobShowingModel(
    title: 'Applied profile',
    icon: 'assets/svg/file.svg',
  ),
];

final listActionJobPaused = [
  ActionJobShowingModel(
    title: 'Edit',
    icon: 'assets/svg/edit.svg',
  ),
  ActionJobShowingModel(
    title: 'Show job',
    icon: 'assets/svg/file.svg',
  ),
];
final listActionJobReject = [
  ActionJobShowingModel(
    title: 'Delete',
    icon: 'assets/svg/delete.svg',
  ),
  ActionJobShowingModel(
    title: 'Repost',
    icon: 'assets/svg/check-circle.svg',
  ),
  ActionJobShowingModel(
    title: 'Edit',
    icon: 'assets/svg/edit.svg',
  ),

];
