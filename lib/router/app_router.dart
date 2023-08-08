import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/views/career_goal_page.dart';
import 'package:jobby_application/account/views/about_jobby_page.dart';
import 'package:jobby_application/account/views/account_setting_page.dart';
import 'package:jobby_application/account/views/acdemic_level_page.dart';
import 'package:jobby_application/account/views/change_acount_page.dart';
import 'package:jobby_application/account/views/change_password_page.dart';
import 'package:jobby_application/account/views/contact_info_page.dart';
import 'package:jobby_application/account/views/hobby_page.dart';
import 'package:jobby_application/account/views/id_identification_detail_page.dart';
import 'package:jobby_application/account/views/id_identification_page.dart';
import 'package:jobby_application/account/views/language_page.dart';
import 'package:jobby_application/account/views/mange_cv_page.dart';
import 'package:jobby_application/account/views/privacy_and_policy_page.dart';
import 'package:jobby_application/account/views/prize_page.dart';
import 'package:jobby_application/account/views/reference_person.dart';
import 'package:jobby_application/account/views/share_with_your_friend_page.dart';
import 'package:jobby_application/account/views/skill_page.dart';
import 'package:jobby_application/account/views/term_of_service_page.dart';
import 'package:jobby_application/account/views/work_experience_page.dart';
import 'package:jobby_application/account/views/your_jobby_profile_page.dart';
import 'package:jobby_application/chat/models/chat_model.dart';
import 'package:jobby_application/chat/views/call_video_pang.dart';
import 'package:jobby_application/chat/views/chat_detail_page.dart';
import 'package:jobby_application/create_password/views/create_password_page.dart';
import 'package:jobby_application/forget_password/views/forget_password_page.dart';
import 'package:jobby_application/home/views/apply_company/views/detail_company_page.dart';
import 'package:jobby_application/home/views/apply_now/views/apply_now_page.dart';
import 'package:jobby_application/home/views/blog_detail_page.dart';
import 'package:jobby_application/home/views/blogs_page.dart';
import 'package:jobby_application/home/views/company_see_all_page.dart';
import 'package:jobby_application/home/views/ebook_page.dart';
import 'package:jobby_application/home/views/event_detail_page.dart';
import 'package:jobby_application/home/views/event_page.dart';
import 'package:jobby_application/home/views/hot_job_see_all_page.dart';
import 'package:jobby_application/home/views/trending_see_all_page.dart';
import 'package:jobby_application/main/views/main_view.dart';
import 'package:jobby_application/notification/views/notification_page.dart';
import 'package:jobby_application/notification/views/setting_notification_page.dart';
import 'package:jobby_application/onboarding/views/on_boarding_page.dart';
import 'package:jobby_application/sign_up/views/sign_up_enter_prise2_page.dart';
import 'package:jobby_application/sign_up/views/sign_up_enter_prise3_page.dart';
import 'package:jobby_application/sign_up/views/sign_up_enter_prise4_page.dart';
import 'package:jobby_application/sign_up/views/sign_up_head_hunter_page.dart';
import 'package:jobby_application/sign_up/views/sign_up_individual_page.dart';
import 'package:jobby_application/sign_up/views/sign_up_job_seeker_page.dart';
import 'package:jobby_application/sign_up_select/views/choose_positions_page.dart';
import 'package:jobby_application/sign_up_select/views/choose_role_sign_up.dart';
import 'package:jobby_application/signin/views/sign_in_page.dart';
import 'package:jobby_application/splash/views/splash_page.dart';
import 'package:jobby_application/verify_otp_code/views/otp_forget_password_page.dart';
import 'package:jobby_application/verify_otp_code/views/otp_sign_up_job_seeker.dart';

import '../account/views/your_work_criteria_page.dart';
import '../home/views/ebook_detail_page.dart';

class AppRouter {
  AppRouter._();
  static final routerConfig = GoRouter(
    routes: [
      GoRoute(
        path: SplashPage.routePath,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: OnBoardingPage.routePath,
        builder: (context, state) => const OnBoardingPage(),
      ),
      GoRoute(
        path: SignInPage.routePath,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: ForgetPasswordPage.routePath,
        builder: (context, state) => const ForgetPasswordPage(),
      ),
      GoRoute(
        path: CreatePasswordPage.routePath,
        builder: (context, state) => const CreatePasswordPage(),
      ),
      GoRoute(
        path: SignUpSelectPage.routePath,
        builder: (context, state) => const SignUpSelectPage(),
      ),
      GoRoute(
        path: VerifyOTPForgetPage.routePath,
        builder: (context, state) => const VerifyOTPForgetPage(),
      ),
      GoRoute(
        path: SignUpJobSeekerPage.routePath,
        builder: (context, state) => const SignUpJobSeekerPage(),
      ),
      GoRoute(
        path: OTPSignUpJonSeekerPage.routePath,
        builder: (context, state) => const OTPSignUpJonSeekerPage(),
      ),
      GoRoute(
        path: SignUpHeadHunterPage.routePath,
        builder: (context, state) => const SignUpHeadHunterPage(),
      ),
      GoRoute(
        path: SignUpChoosePositionPage.routePath,
        builder: (context, state) => const SignUpChoosePositionPage(),
      ),
      GoRoute(
        path: SignUpIndividualPage.routePath,
        builder: (context, state) => const SignUpIndividualPage(),
      ),
      GoRoute(
        path: SignUpEnterPrise2Page.routePath,
        builder: (context, state) => const SignUpEnterPrise2Page(),
      ),
      GoRoute(
        path: SignUpEnterPrise3Page.routePath,
        builder: (context, state) => const SignUpEnterPrise3Page(),
      ),
      GoRoute(
        path: SignUpEnterPrise4Page.routePath,
        builder: (context, state) => const SignUpEnterPrise4Page(),
      ),
      GoRoute(
        path: MainView.routePath,
        builder: (context, state) => const MainView(),
      ),
      GoRoute(
        path: NotificationPage.routePath,
        builder: (context, state) => const NotificationPage(),
      ),
      GoRoute(
        path: ChatDetailPage.routePath,
        builder: (context, state) {
          final chat = state.extra;
          return ChatDetailPage(chatModel: chat! as ChatModel);
        },
      ),
      GoRoute(
        path: CallVideoPage.routePath,
        builder: (context, state) => const CallVideoPage(),
      ),
      GoRoute(
        path: TrendingSeeAllPage.routePath,
        builder: (context, state) => const TrendingSeeAllPage(),
      ),
      GoRoute(
        path: HotJobSeeAllPage.routePath,
        builder: (context, state) => const HotJobSeeAllPage(),
      ),
      GoRoute(
        path: CompanySeeAllPage.routePath,
        builder: (context, state) => const CompanySeeAllPage(),
      ),
      GoRoute(
        path: EBookPage.routePath,
        builder: (context, state) => const EBookPage(),
      ),
      GoRoute(
        path: BlogsPage.routePath,
        builder: (context, state) => const BlogsPage(),
      ),
      GoRoute(
        path: EventPage.routePath,
        builder: (context, state) => const EventPage(),
      ),
      GoRoute(
        path: BlogDetailPage.routePath,
        builder: (context, state) => const BlogDetailPage(),
      ),
      GoRoute(
        path: EventDetailPage.routePath,
        builder: (context, state) => const EventDetailPage(),
      ),
      GoRoute(
        path: EbookDetailPage.routePath,
        builder: (context, state) => const EbookDetailPage(),
      ),
      GoRoute(
        path: ApplyNowPage.routePath,
        builder: (context, state) => const ApplyNowPage(),
      ),
      GoRoute(
        path: DetailCompanyPage.routePath,
        builder: (context, state) => const DetailCompanyPage(),
      ),
      GoRoute(
        path: YourJobbyProfilePage.routePath,
        builder: (context, state) => const YourJobbyProfilePage(),
      ),
      GoRoute(
        path: MangeCVPage.routePath,
        builder: (context, state) => const MangeCVPage(),
      ),
      GoRoute(
        path: YourWorkCriteriaPage.routePath,
        builder: (context, state) => const YourWorkCriteriaPage(),
      ),
      GoRoute(
        path: IDIdentificationPage.routePath,
        builder: (context, state) => const IDIdentificationPage(),
      ),
      GoRoute(
        path: ShareWithYourFriendPage.routePath,
        builder: (context, state) => const ShareWithYourFriendPage(),
      ),
      GoRoute(
        path: AccountSettingPage.routePath,
        builder: (context, state) => const AccountSettingPage(),
      ),
      GoRoute(
        path: AboutJobbyPage.routePath,
        builder: (context, state) => const AboutJobbyPage(),
      ),
      GoRoute(
        path: AcademicLevelPage.routePath,
        builder: (context, state) => const AcademicLevelPage(),
      ),
      GoRoute(
        path: CareerGoalPage.routePath,
        builder: (context, state) => const CareerGoalPage(),
      ),
      GoRoute(
        path: ContactInfoPage.routePath,
        builder: (context, state) => const ContactInfoPage(),
      ),
      GoRoute(
        path: HobbyPage.routePath,
        builder: (context, state) => const HobbyPage(),
      ),
      GoRoute(
        path: LanguagePage.routePath,
        builder: (context, state) => const LanguagePage(),
      ),
      GoRoute(
        path: PrizePage.routePath,
        builder: (context, state) => const PrizePage(),
      ),
      GoRoute(
        path: ReferencePersonPage.routePath,
        builder: (context, state) => const ReferencePersonPage(),
      ),
      GoRoute(
        path: SkillsPage.routePath,
        builder: (context, state) => const SkillsPage(),
      ),
      GoRoute(
        path: WorkExperiencePage.routePath,
        builder: (context, state) => const WorkExperiencePage(),
      ),
      GoRoute(
        path: SettingNotificationPage.routePath,
        builder: (context, state) => const SettingNotificationPage(),
      ),
      GoRoute(
        path: ChangePasswordPage.routePath,
        builder: (context, state) => const ChangePasswordPage(),
      ),
      GoRoute(
        path: TermOfServicePage.routePath,
        builder: (context, state) => const TermOfServicePage(),
      ),
      GoRoute(
        path: PrivacyAndPolicyPage.routePath,
        builder: (context, state) => const PrivacyAndPolicyPage(),
      ),
      GoRoute(
        path: ChangeAccountPage.routePath,
        builder: (context, state) => const ChangeAccountPage(),
      ),
      GoRoute(
        path: IDIdentificationDetailPage.routePath,
        builder: (context, state) => const IDIdentificationDetailPage(),
      ),
    ],
  );
}
