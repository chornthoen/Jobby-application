import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class ShareWithYourFriendEmPage extends StatefulWidget {
  const ShareWithYourFriendEmPage({super.key});

  static const String routePath = '/share_with_your_friend_em_page';

  @override
  State<ShareWithYourFriendEmPage> createState() =>
      _ShareWithYourFriendEmPageState();
}

class _ShareWithYourFriendEmPageState extends State<ShareWithYourFriendEmPage> {
  final String text = 'https://t.me/chornthoen';
  bool _isCopied = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Share With Your Friend'),
      backgroundColor: AppColors.kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/users.svg',
                  width: AppSpacing.xlg,
                  height: AppSpacing.xlg,
                ),
                const SizedBox(width: AppSpacing.sm),
                const Text(
                  'Recommend to your friends',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            Row(
              children: [
                const Text(
                  'Share now to get more',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kColorGray600,
                  ),
                ),
                const SizedBox(width: AppSpacing.xs),
                SvgPicture.asset(
                  'assets/svg/diamond-color.svg',
                  width: AppSpacing.lg,
                  height: AppSpacing.lg,
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xlg),
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSpacing.sm),
                border: Border.all(color: AppColors.kColorGray200),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSpacing.sm),
                ),
                onTap: () {
                  setState(() {
                    _isCopied = true;
                  });
                  Clipboard.setData(
                    ClipboardData(text: text),
                  );
                },
                title: Row(
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      splashRadius: AppSpacing.xlg,
                      onPressed: () {
                        setState(() {
                          _isCopied = true;
                        });
                        Clipboard.setData(
                          ClipboardData(text: text),
                        );
                      },
                      icon: Icon(
                        _isCopied ? PhosphorIcons.checks : PhosphorIcons.copy,
                        color: AppColors.kPrimaryColor,
                        size: AppSpacing.xlg,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
