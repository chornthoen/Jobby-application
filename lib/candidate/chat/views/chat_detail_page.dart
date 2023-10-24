import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/chat/models/chat_model.dart';
import 'package:jobby_application/candidate/chat/views/call_video_pang.dart';
import 'package:jobby_application/candidate/chat/widgets/custom_app_bar_chat.dart';
import 'package:jobby_application/candidate/chat/widgets/custom_text_field_chat.dart';
import 'package:jobby_application/candidate/chat/widgets/message_other.dart';
import 'package:jobby_application/candidate/chat/widgets/my_message.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({
    required this.chatModel, super.key,
  });

  final ChatModel chatModel;

  static const String routePath = '/chat-detail-page';

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  late TextEditingController messageController;

  @override
  void initState() {
    super.initState();
    messageController = TextEditingController();
  }

  @override
  void dispose() {
    messageController.dispose();

    super.dispose();
  }

  //close keyboard
  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
  }

  List<String> messages = [
    'Hello, Chorn Thoen',
    'Hello, how are you? I am fine. What about you? ',
    'Hello.',
    'Hello, how are you? I am fine. ',
  ];
  List<String> messagesOther = [
    'Hello, Chorn Thoen',
    'Hello, how are you? I am fine. ',
    // 'Where are you?',
  ];
  bool isShowEmoji = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: closeKeyboard,
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: CustomAppBarChat(
          chatModel: widget.chatModel,
          onCall: () {},
          onVideoCall: () {
            //context.push(CallVideoPage.routePath);
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSpacing.xlg),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: messagesOther.length,
                    itemBuilder: (context, index) {
                      final message = messagesOther.length == 1;
                      final m = messagesOther.length - 1 == index ? 0 : 1;
                      return MessageOther(
                        index: message ? 0 : m,
                        image: 'assets/images/facebook.png',
                        message: messagesOther[index],
                      );
                    },
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      return MyMessage(
                        message: messages[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomTextFieldChat(
          messageController: messageController,
          onSend: () {
            setState(() {
              messages.add(messageController.text.trim());
              messageController.clear();
            });
          },
          onEmoji: () {},
          onPickImage: () {},
          onPickFile: () {},
        ),
      ),
    );
  }

}

class MessageModel {

  MessageModel({required this.sms, required this.isMe});
  String sms;
  bool isMe;

  final List<MessageModel> messages = [
    MessageModel(
      sms: 'Hello, Chorn Thoen',
      isMe: false,
    ),
    MessageModel(
      sms: 'Hello, how are you? I am fine. What about you? ',
      isMe: false,
    ),
    MessageModel(
      sms: 'Hello, how are you? I am fine. ',
      isMe: false,
    ),
    MessageModel(
      sms: 'Hello!!!!!!!',
      isMe: true,
    ),
    MessageModel(
      sms: 'Hello, how are you? I am fine. What about you? ',
      isMe: false,
    ),
    MessageModel(
      sms: 'Hello, how are you? I am fine. ',
      isMe: false,
    ),
    MessageModel(
      sms: 'This is my message.',
      isMe: true,
    ),
    MessageModel(
      sms: 'Hello, how are you? I am fine. What about you? ',
      isMe: false,
    ),
    MessageModel(
      sms: 'Where are you?',
      isMe: true,
    ),
    MessageModel(
      sms: 'When will you come back?',
      isMe: true,
    ),
    MessageModel(
      sms: 'Hello, how are you? I am fine. What about you? ',
      isMe: false,
    ),
    MessageModel(
      sms: 'Hello, how are you? I am fine. ',
      isMe: false,
    ),
    MessageModel(
      sms: 'Hello, how are you? I am fine. What about you? ',
      isMe: true,
    ),
    MessageModel(
      sms: 'Hello, how are you? I am fine. ',
      isMe: true,
    ),

  ];
}
