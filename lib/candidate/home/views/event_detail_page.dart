import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/candidate/home/models/comment_model.dart';
import 'package:jobby_application/candidate/home/models/speaker_list_model.dart';
import 'package:jobby_application/candidate/home/widgets/item_comment.dart';
import 'package:jobby_application/candidate/home/widgets/item_speaker_list.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class EventDetailPage extends StatefulWidget {
  const EventDetailPage({super.key});

  static const String routePath = '/eventDetailPage';

  @override
  State<EventDetailPage> createState() => _EventDetailPageState();
}

class _EventDetailPageState extends State<EventDetailPage> {
  late TextEditingController _commentController;

  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  List<String> tabs = [
    'IT',
    'Software',
    'AI',
  ];
  int index = 0;

  //add comment
  void addComment() {
    if (_commentController.text.isNotEmpty) {
      setState(() {
        commentModel.add(
          CommentModel(
            image: 'assets/images/thoen.png',
            name: 'Chorn Thoen',
            date: 'Just now',
            comment: _commentController.text,
            like: 0,
            share: 0,
            isLiked: false,
          ),
        );
      });
    }
  }

  //close keyboard
  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: closeKeyboard,
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: CustomAppBar(
          icon1: PhosphorIcons.bookmark_simple,
          icon2: PhosphorIcons.share_network,
          onTap1: () {},
          onTap2: () {},
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 34,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16),
                  itemCount: tabs.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          this.index = index;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: this.index == index
                              ? AppColors.kPrimaryColor
                              : AppColors.kColorGray200,
                          borderRadius: BorderRadius.circular(34),
                        ),
                        child: Text(
                          tabs[index],
                          style: TextStyle(
                            color: this.index == index
                                ? Colors.white
                                : AppColors.kColorGray600,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Market Insight – See salary, understand your favorite'
                      ' job position',
                      style: TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          PhosphorIcons.calendar_blank,
                          color: AppColors.kColorGray500,
                          size: 22,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          '12/12/2021',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kColorGray500,
                          ),
                        ),
                        const SizedBox(width: 20),
                        SvgPicture.asset(
                          'assets/svg/users.svg',
                          height: 22,
                          width: 22,
                          color: AppColors.kColorGray500,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          '100 - 500',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kColorGray500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/events1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      'Employee performance reviews, where managers evaluate '
                      'their staff’s overall performance, are vital for'
                      ' every business. However, the effectiveness of those'
                      ' sessions depends on how they are prepared and '
                      'conducted.',
                      style: TextStyle(
                        color: AppColors.kColorGray600,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const ItemDetail(
                      svg: 'assets/svg/calendar.svg',
                      label: 'Time:',
                      value: '12/12/2021',
                    ),
                    const ItemDetail(
                      svg: 'assets/svg/users.svg',
                      label: 'People:',
                      value: '100-200',
                    ),
                    const ItemDetail(
                      svg: 'assets/svg/location.svg',
                      label: 'Location:',
                      value: 'Phnom Penh',
                    ),
                    const ItemDetail(
                      svg: 'assets/svg/user.svg',
                      label: 'Host:',
                      value: 'Apply Cambodia',
                    ),
                    const ItemDetail(
                      svg: 'assets/svg/list.svg',
                      label: 'Overview:',
                      value:
                          'The 4.0 revolution makes the term artificial '
                              'intelligence no longer strange to everyone, no '
                              'matter what field you are in. The use of AI in '
                              'recruitment has been and is the mainstream in '
                              'the future with undeniable benefits for both'
                              ' employers and candidates.',
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Speakers list',
                      style: TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ListView.builder(
                      itemCount: speakerModel.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final speaker = speakerModel[index];
                        return ItemSpeakerList(
                          image: speaker.image,
                          name: speaker.name,
                          position: speaker.description,
                        );
                      },
                    ),
                    const Text(
                      'Comments (2)',
                      style: TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomTextFieldForms(
                      onChange: (value) {
                        setState(() {});
                        return null;
                      },
                      controller: _commentController,
                      hintText: 'Add your comment',
                      maxLines: 3,
                    ),
                    const SizedBox(height: 10),
                    if (_commentController.text.isNotEmpty)
                      CustomElevatedButton(
                        isClick: true,
                        onPressed: () {
                          addComment();
                          _commentController.clear();
                        },
                        text: 'Submit',
                      ),
                    const SizedBox(height: 10),
                    ListView.builder(
                      itemCount: commentModel.length,
                      shrinkWrap: true,
                      reverse: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final comment = commentModel[index];
                        return ItemCommentInEvent(
                          image: comment.image,
                          name: comment.name,
                          date: comment.date,
                          comment: comment.comment,
                          like: comment.like,
                          share: comment.share,
                          isLiked: comment.isLiked,
                          onLikeTap: () {
                            setState(
                              () {
                                comment.isLiked = !comment.isLiked;
                                comment.isLiked
                                    ? comment.like += 1
                                    : comment.like -= 1;
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
