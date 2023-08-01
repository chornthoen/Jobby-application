import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/chat/models/chat_model.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class CustomAppBarChat extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBarChat({
    super.key,
    required this.chatModel,
    this.onCall,
    this.onVideoCall,
  });

  final ChatModel chatModel;
  final VoidCallback? onCall;
  final VoidCallback? onVideoCall;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.09,
      backgroundColor: AppColors.kBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      shadowColor: AppColors.kWhiteColor,
      elevation: 2,
      leadingWidth: 30,
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: IconButton(
          splashRadius: 20,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.kQuaternaryColor,
            size: 28,
          ),
        ),
      ),
      title: Row(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: AppColors.kWhiteColor,
            backgroundImage: AssetImage(chatModel.avatarUrl!),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    chatModel.name,
                    style: const TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  if (chatModel.isVerified)
                    SvgPicture.asset(
                      'assets/svg/verified.svg',
                      width: 16,
                      height: 16,
                    ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 5),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: chatModel.online
                          ? AppColors.kGreenColor
                          : AppColors.kSenaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    chatModel.online ? 'Online' : 'Offline',
                    style: TextStyle(
                      color: chatModel.online
                          ? AppColors.kGreenColor
                          : AppColors.kSenaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      actions: [
        GestureDetector(
          onTap: onCall,
          child: Padding(
            padding: const EdgeInsets.only(right: 14),
            child: SvgPicture.asset(
              'assets/svg/call.svg',
              width: 30,
              height: 30,
              color: AppColors.kQuaternaryColor,
            ),
          ),
        ),
        GestureDetector(
          onTap: onVideoCall,
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset(
              'assets/svg/video-call.svg',
              width: 30,
              height: 30,
            ),
          ),
        ),
      ],
    );
  }
}
