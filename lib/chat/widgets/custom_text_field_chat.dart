import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class CustomTextFieldChat extends StatefulWidget {
  const CustomTextFieldChat({
    required this.messageController,
    super.key,
    this.onSend,
    this.onEmoji,
    this.onPickImage,
    this.onPickFile,
  });

  final TextEditingController messageController;
  final VoidCallback? onSend;
  final VoidCallback? onEmoji;
  final VoidCallback? onPickImage;
  final VoidCallback? onPickFile;

  @override
  State<CustomTextFieldChat> createState() => _CustomTextFieldChatState();
}

class _CustomTextFieldChatState extends State<CustomTextFieldChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
      ),
      margin: const EdgeInsets.only(bottom: 16),
      color: AppColors.kBackgroundColor,
      child: Row(
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: widget.messageController,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      minLines: 1,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kBlackColor,
                          ),
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          splashRadius: 24,
                          onPressed: widget.onEmoji,
                          icon: SvgPicture.asset(
                            'assets/svg/smile.svg',
                            height: 26,
                            width: 26,
                          ),
                        ),
                        suffixIcon: IconButton(
                          splashRadius: 24,
                          onPressed: widget.onPickFile,
                          icon: SvgPicture.asset(
                            'assets/svg/attach.svg',
                            height: 26,
                            width: 26,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'Type a message',
                        hintStyle:
                            Theme.of(context).textTheme.labelLarge!.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.kQuinaryColor,
                                ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 16,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(48),
                          borderSide: const BorderSide(
                            color: AppColors.kSeptenaryColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(48),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(48),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        filled: true,
                        fillColor: AppColors.kBackgroundColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (widget.messageController.text.trim().isNotEmpty)
            Container(
              margin: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                color: AppColors.kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                splashRadius: 24,
                onPressed: widget.onSend,
                icon: SvgPicture.asset(
                  'assets/svg/send.svg',
                  color: AppColors.kWhiteColor,
                  height: 25,
                  width: 25,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
