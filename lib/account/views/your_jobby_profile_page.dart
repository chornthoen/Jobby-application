import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/models/list_string.dart';
import 'package:jobby_application/account/views/acdemic_level_page.dart';
import 'package:jobby_application/account/views/career_goal_page.dart';
import 'package:jobby_application/account/views/contact_info_page.dart';
import 'package:jobby_application/account/views/hobby_page.dart';
import 'package:jobby_application/account/views/language_page.dart';
import 'package:jobby_application/account/views/prize_page.dart';
import 'package:jobby_application/account/views/reference_person.dart';
import 'package:jobby_application/account/views/skill_page.dart';
import 'package:jobby_application/account/views/work_experience_page.dart';
import 'package:jobby_application/account/widgets/action_skill.dart';
import 'package:jobby_application/account/widgets/cover_and_profile.dart';
import 'package:jobby_application/account/widgets/custom_container.dart';
import 'package:jobby_application/account/widgets/icon_and_text.dart';
import 'package:jobby_application/account/widgets/slide_profile.dart';
import 'package:jobby_application/account/widgets/text_label_and_button.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class YourJobbyProfilePage extends StatefulWidget {
  const YourJobbyProfilePage({super.key});

  static const String routePath = '/your_jobby_profile_page';

  @override
  State<YourJobbyProfilePage> createState() => _YourJobbyProfilePageState();
}

class _YourJobbyProfilePageState extends State<YourJobbyProfilePage> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'Your Jobby Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CoverAndProfile(
              imageCover: 'assets/images/bg_profile.png',
              imageProfile: 'assets/images/thoen.png',
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  CustomContainer(
                    child: Column(
                      children: [
                        TextLabelAndButton(
                          text: 'Chorn Thoen',
                          icon1: PhosphorIcons.pencil_simple,
                          onTap1: () {
                            context.push(ContactInfoPage.routePath);
                          },
                        ),
                        const SizedBox(height: 10),
                        const IconAndText(
                          svg: 'assets/svg/jobs.svg',
                          text: 'Mobile Developer',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/call.svg',
                          text: '069 997 502',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/email.svg',
                          text: 'thoenchorn@gmail.com',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/gender-male.svg',
                          text: 'Male',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/location.svg',
                          text: 'Phnom Penh',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/world.svg',
                          text: 'www.thoenchorn.com',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextLabelAndButton(
                    text: 'Slide profile',
                    size: 22,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const SlideProfiles(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextLabelAndButton(
                    text: 'Career goals',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(CareerGoalPage.routePath);
                    },
                  ),
                  const SizedBox(height: 10),
                   Text(
                    goals.isNotEmpty ? goals[0] : '',
                    style: const TextStyle(
                      color: AppColors.kQuaternaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextLabelAndButton(
                    text: 'Work Experience',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(WorkExperiencePage.routePath);
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomContainer(
                    child: Column(
                      children: [
                        TextLabelAndButton(
                          text: 'Mobile Developer',
                          icon1: PhosphorIcons.pencil_simple,
                          icon: PhosphorIcons.trash,
                          onTap1: () {
                            context.push(WorkExperiencePage.routePath);
                          },
                        ),
                        const SizedBox(height: 10),
                        const IconAndText(
                          svg: 'assets/svg/building.svg',
                          text: 'Borey Peng Huoth',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/time.svg',
                          text: '2019 - Present',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/file.svg',
                          text:
                              'Tmrw studio owns, manages and operates a system '
                                  'of Trade Centers',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextLabelAndButton(
                    text: 'Academic level',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(AcademicLevelPage.routePath);
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomContainer(
                    child: Column(
                      children: [
                        TextLabelAndButton(
                          text: 'Mobile Developer',
                          icon1: PhosphorIcons.pencil_simple,
                          icon: PhosphorIcons.trash,
                          onTap1: () {
                            context.push(AcademicLevelPage.routePath);
                          },
                        ),
                        const SizedBox(height: 10),
                        const IconAndText(
                          svg: 'assets/svg/education.svg',
                          text: 'Computer Science',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/star-outline.svg',
                          text: 'GPA: 3.5',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/time.svg',
                          text: '2020 - 2024',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextLabelAndButton(
                    text: 'Skills',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(SkillsPage.routePath);
                      // setState(() {
                      //   skills.add('Flutter');
                      // });
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomContainer(
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        for (int i = 0; i < skills.length; i++)
                          ActionSkills(
                            text: skills[i],
                            onTap: () {
                              setState(() {
                                skills.removeAt(i);
                              });
                            },
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextLabelAndButton(
                    text: 'Languages',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(LanguagePage.routePath);
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomContainer(
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        for (int i = 0; i < languages.length; i++)
                          ActionSkills(
                            text: languages[i],
                            onTap: () {
                              setState(() {
                                languages.removeAt(i);
                              });
                            },
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextLabelAndButton(
                    text: 'Prize',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(PrizePage.routePath);
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomContainer(
                    child: Column(
                      children: [
                        TextLabelAndButton(
                          text: 'Design award',
                          icon1: PhosphorIcons.pencil_simple,
                          icon: PhosphorIcons.trash,
                          onTap1: () {
                            context.push(PrizePage.routePath);
                          },
                        ),
                        const SizedBox(height: 10),
                        const IconAndText(
                          svg: 'assets/svg/building.svg',
                          text: 'www.thoenchorn.com',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/time.svg',
                          text: '01/01/2024',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomContainer(
                    child: Column(
                      children: [
                        TextLabelAndButton(
                          text: 'UI/UX award',
                          icon1: PhosphorIcons.pencil_simple,
                          icon: PhosphorIcons.trash,
                          onTap: () {
                            context.push(PrizePage.routePath);
                          },
                        ),
                        const SizedBox(height: 10),
                        const IconAndText(
                          svg: 'assets/svg/building.svg',
                          text: 'www.thoenchorn.com',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/time.svg',
                          text: '01/01/2024',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextLabelAndButton(
                    text: 'Hobbies',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(HobbyPage.routePath);
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomContainer(
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        for (int i = 0; i < hobbies.length; i++)
                          ActionSkills(
                            text: hobbies[i],
                            onTap: () {
                              setState(() {
                                hobbies.removeAt(i);
                              });
                            },
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextLabelAndButton(
                    text: 'References person',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(ReferencePersonPage.routePath);
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomContainer(
                    child: Column(
                      children: [
                        TextLabelAndButton(
                          text: 'Chorn Thoen',
                          icon1: PhosphorIcons.pencil_simple,
                          icon: PhosphorIcons.trash,
                          onTap1: () {
                            context.push(ReferencePersonPage.routePath);
                          },
                        ),
                        const SizedBox(height: 10),
                        const IconAndText(
                          svg: 'assets/svg/building.svg',
                          text: 'Phnom Penh',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/jobs.svg',
                          text: 'Mobile Developer',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/call.svg',
                          text: '069 997 502',
                        ),
                        const IconAndText(
                          svg: 'assets/svg/email.svg',
                          text: 'thoenchorn@gmail.com',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextLabelAndButton(
                    text: 'Resume',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap: () {},
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.kGray200,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'Resume.pdf',
                            style: TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Icon(
                          PhosphorIcons.x,
                          color: AppColors.kPrimaryColor,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
