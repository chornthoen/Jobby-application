import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/chat/models/chat_model.dart';
import 'package:jobby_application/chat/views/chat_detail_page.dart';
import 'package:jobby_application/chat/widgets/item_chat.dart';
import 'package:jobby_application/employer/chat/views/chat_em_detail_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ChatEmployerPage extends StatefulWidget {
  const ChatEmployerPage({Key? key}) : super(key: key);

  static const String routePath = '/chat_employer';

  @override
  State<ChatEmployerPage> createState() => _ChatEmployerPageState();
}

class _ChatEmployerPageState extends State<ChatEmployerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.075,
        backgroundColor: AppColors.kBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        shadowColor: AppColors.kWhiteColor,
        elevation: 2,
        title: const Text(
          'Chat',
          style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              splashRadius: 20,
              onPressed: () {},
              icon: const Icon(
                PhosphorIcons.magnifying_glass,
                color: AppColors.kPrimaryColor,
                size: 28,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: modelChat.length,
          itemBuilder: (context, index) {
            final model = modelChat[index];
            return ItemChat(
              id: model.id,
              avatarUrl: model.avatarUrl!,
              name: model.name,
              message: model.message,
              time: model.time,
              isMessageRead: model.isMessageRead,
              online: model.online,
              isVerified: model.isVerified,
              countMessage: model.countMessage,
              onTap: () {
                setState(() {
                  modelChat[index].isMessageRead = false;
                  context.push(
                    ChatEmployerDetailPage.routePath,
                    extra: modelChat[index],
                  );
                });
              },
            );
          },
        ),
      ),
    );
  }
}
