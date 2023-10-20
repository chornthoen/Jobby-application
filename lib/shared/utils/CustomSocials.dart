import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/item_social.dart';

class CustomSocials extends StatelessWidget {
  const CustomSocials({
    super.key,
    this.onFacebook,
    this.onGoogle,
    this.onApple,
  });

  final VoidCallback? onFacebook;
  final VoidCallback? onGoogle;
  final VoidCallback? onApple;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ItemSocials(
          onPressed: onFacebook,
          image: 'assets/images/facebook.png',
        ),
        ItemSocials(
          onPressed: onGoogle,
          image: 'assets/images/google.png',
        ),
        ItemSocials(
          onPressed: onApple,
          image: 'assets/images/apple.png',
        ),
      ],
    );
  }
}
