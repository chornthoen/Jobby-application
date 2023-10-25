import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/account/models/list_string.dart';
import 'package:jobby_application/candidate/account/views/acdemic_level_page.dart';
import 'package:jobby_application/candidate/account/views/career_goal_page.dart';
import 'package:jobby_application/candidate/account/views/contact_info_page.dart';
import 'package:jobby_application/candidate/account/views/hobby_page.dart';
import 'package:jobby_application/candidate/account/views/language_page.dart';
import 'package:jobby_application/candidate/account/views/prize_page.dart';
import 'package:jobby_application/candidate/account/views/reference_person.dart';
import 'package:jobby_application/candidate/account/views/skill_page.dart';
import 'package:jobby_application/candidate/account/views/work_experience_page.dart';
import 'package:jobby_application/candidate/account/widgets/action_skill.dart';
import 'package:jobby_application/candidate/account/widgets/cover_and_profile.dart';
import 'package:jobby_application/candidate/account/widgets/custom_container.dart';
import 'package:jobby_application/candidate/account/widgets/icon_and_text.dart';
import 'package:jobby_application/candidate/account/widgets/slide_profile.dart';
import 'package:jobby_application/candidate/account/widgets/text_label_and_button.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
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
            const SizedBox(height: AppSpacing.lg),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.sm,
              ),
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
                        const SizedBox(height: AppSpacing.sm),
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
                  const SizedBox(height: AppSpacing.lg),
                  const TextLabelAndButton(
                    text: 'Slide profile',
                    size: 22,
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            const SlideProfiles(),
            const SizedBox(height: AppSpacing.xlg),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
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
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    goals.isNotEmpty ? goals[0] : '',
                    style: const TextStyle(
                      color: AppColors.kColorGray600,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  TextLabelAndButton(
                    text: 'Work Experience',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(WorkExperiencePage.routePath);
                    },
                  ),
                  const SizedBox(height: AppSpacing.md),
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
                        const SizedBox(height: AppSpacing.md),
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
                  const SizedBox(height: AppSpacing.lg),
                  TextLabelAndButton(
                    text: 'Academic level',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(AcademicLevelPage.routePath);
                    },
                  ),
                  const SizedBox(height: AppSpacing.md),
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
                        const SizedBox(height: AppSpacing.md),
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
                  const SizedBox(height: AppSpacing.lg),
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
                  const SizedBox(height: AppSpacing.md),
                  CustomContainer(
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: AppSpacing.sm,
                      runSpacing: AppSpacing.sm,
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
                  const SizedBox(height: AppSpacing.lg),
                  TextLabelAndButton(
                    text: 'Languages',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(LanguagePage.routePath);
                    },
                  ),
                  const SizedBox(height: AppSpacing.md),
                  CustomContainer(
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: AppSpacing.sm,
                      runSpacing: AppSpacing.sm,
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
                  const SizedBox(height: AppSpacing.lg),
                  TextLabelAndButton(
                    text: 'Prize',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(PrizePage.routePath);
                    },
                  ),
                  const SizedBox(height: AppSpacing.md),
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
                        const SizedBox(height: AppSpacing.sm),
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
                  const SizedBox(height: AppSpacing.lg),
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
                        const SizedBox(height: AppSpacing.sm),
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
                  const SizedBox(height: AppSpacing.lg),
                  TextLabelAndButton(
                    text: 'Hobbies',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(HobbyPage.routePath);
                    },
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  CustomContainer(
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: AppSpacing.sm,
                      runSpacing: AppSpacing.sm,
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
                  const SizedBox(height: AppSpacing.lg),
                  TextLabelAndButton(
                    text: 'References person',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap1: () {
                      context.push(ReferencePersonPage.routePath);
                    },
                  ),
                  const SizedBox(height: AppSpacing.sm),
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
                        const SizedBox(height: AppSpacing.sm),
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
                  const SizedBox(height: AppSpacing.lg),
                  TextLabelAndButton(
                    text: 'Resume',
                    size: 22,
                    icon1: PhosphorIcons.plus_circle,
                    onTap: () {},
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.md,
                      vertical: AppSpacing.lg,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSpacing.sm),
                      color: AppColors.kColorGray200,
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
                          size: AppSpacing.xlg,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xlg),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
