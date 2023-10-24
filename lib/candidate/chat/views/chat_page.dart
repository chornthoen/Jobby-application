import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/chat/models/chat_model.dart';
import 'package:jobby_application/candidate/chat/views/chat_detail_page.dart';
import 'package:jobby_application/candidate/chat/widgets/item_chat.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  static const String routePath = '/chat-page';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        toolbarHeight: height * 0.075,
        backgroundColor: AppColors.kBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(AppSpacing.xlg),
          ),
        ),
        shadowColor: AppColors.kWhiteColor,
        elevation: 2,
        title: Text('Chat', style: CustomTextStyles.headlineMediumSemiBold),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppSpacing.sm),
            child: IconButton(
              splashRadius: AppSpacing.xlg,
              onPressed: () {},
              icon: const Icon(
                PhosphorIcons.magnifying_glass,
                color: AppColors.kPrimaryColor,
                size: AppSpacing.xlg,
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
                    ChatDetailPage.routePath,
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
