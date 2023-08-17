import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/employer/home/widgets/item_my_privilege.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class LoyaltyPage extends StatefulWidget {
  const LoyaltyPage({Key? key}) : super(key: key);

  static const String routePath = '/loyalty-page';

  @override
  State<LoyaltyPage> createState() => _LoyaltyPageState();
}

class _LoyaltyPageState extends State<LoyaltyPage> {


  final String text = 'https://t.me/chornthoen';
  bool _isCopied = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Loyalty'),
      backgroundColor: AppColors.kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/bg_em.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(14),
                  height: MediaQuery.of(context).size.height * 0.24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Gold',
                        style: TextStyle(
                          fontSize: 26,
                          color: AppColors.kBrownColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          CircularPercentIndicator(
                            radius: 40,
                            lineWidth: 3.5,
                            percent: 0.7,
                            center: SvgPicture.asset(
                              'assets/svg/trophy.svg',
                              color: AppColors.kOrangeColor,
                              width: 40,
                              height: 40,
                            ),
                            progressColor: AppColors.kOrangeColor,
                            backgroundColor:
                                AppColors.kOrangeColor.withOpacity(0.3),
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Available Diamond',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.kBrownColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    const Text(
                                      '100.00',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: AppColors.kBrownColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        color: AppColors.kWhiteColor,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: AppColors.kOrangeColor),
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/svg/diamond-color.svg',
                                        width: 16,
                                        height: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  '10,000 diamond till your next',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.kBrownColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'My Privilege',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 20,
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ItemMyPrivilege(
                  title: 'Gift Package',
                  svgUrl: 'assets/svg/gift.svg',
                  description: '20\$',
                ),
                ItemMyPrivilege(
                  title: 'Gift coupon',
                  svgUrl: 'assets/svg/discount.svg',
                  description: '10%',
                ),
                ItemMyPrivilege(
                  title: 'Birthday',
                  svgUrl: 'assets/svg/birthday.svg',
                  description: 'Good luck',
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/gift-color.svg',
                      width: 45,
                      height: 45,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Refer your friends and earn 100 points',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.kSecondaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'Every time one of your friends users your code when purchasing he gets 20 points and you get 100 points',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.kQuinaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            DottedBorder(
              dashPattern: [8, 4],
              borderType: BorderType.RRect,
              color: AppColors.kSeptenaryColor,
              radius: const Radius.circular(10),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
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
                      splashRadius: 25,
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
                        size: 24,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

