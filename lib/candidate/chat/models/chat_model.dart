class ChatModel {
  ChatModel({
    required this.id,
    required this.name,
    required this.message,
    required this.time,
    required this.isMessageRead,
    required this.online,
    required this.isVerified,
    this.avatarUrl,
    this.countMessage,
  });

  int id;
  String name;
  String message;
  String time;
  String? avatarUrl;
  bool isMessageRead;
  bool online;
  bool isVerified;
  int? countMessage;
}

List<ChatModel> modelChat = [
  ChatModel(
      id: 1,
      name: 'Chorn Thoen',
      message: 'Hello, How are you?',
      time: '10:33 AM',
      avatarUrl: 'assets/images/thoen.png',
      isMessageRead: true,
      online: true,
      isVerified: true,
      countMessage: 3,),
  ChatModel(
    id: 2,
    name: 'David Beckham',
    message:
        'Hello Devid, I am interested in your job. Can you tell me more about '
        'it?',
    time: '10:33 AM',
    avatarUrl: 'assets/images/profile_null.png',
    isMessageRead: true,
    online: false,
    isVerified: false,
    countMessage: 1,
  ),
  ChatModel(
      id: 3,
      name: 'Jenny Wilson',
      message: 'Hello, How are you? this is my message for you.',
      time: '10:33 AM',
      avatarUrl: 'assets/images/jenny.png',
      isMessageRead: true,
      online: true,
      isVerified: true,
      countMessage: 2,),
  ChatModel(
    id: 4,
    name: 'Jerome Bell',
    message: 'What are you doing?',
    time: '10:55 AM',
    avatarUrl: 'assets/images/jerome.png',
    isMessageRead: false,
    online: true,
    isVerified: true,
  ),
  ChatModel(
    id: 5,
    name: 'FaceBook',
    message: 'When will you come?',
    time: '7:00 AM',
    avatarUrl: 'assets/images/facebook.png',
    isMessageRead: false,
    online: true,
    isVerified: true,
  ),
  ChatModel(
    id: 6,
    name: 'Artem Beliaikin',
    message: 'Why did you do that?',
    time: '1:00 PM',
    avatarUrl: 'assets/images/arlene.png',
    isMessageRead: false,
    online: true,
    isVerified: false,
  ),
  ChatModel(
      id: 7,
      name: 'Apple',
      message: 'See you soon.',
      time: '11:45 AM',
      avatarUrl: 'assets/images/apple.png',
      isMessageRead: true,
      online: true,
      isVerified: true,
      countMessage: 9,),
  ChatModel(
    id: 8,
    name: 'Heng Sopheak',
    message: 'This is my message for you.',
    time: '12:00 PM',
    avatarUrl: 'assets/images/profile_null.png',
    isMessageRead: false,
    online: true,
    isVerified: false,
  ),
];
