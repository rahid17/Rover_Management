import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homeFeatures/accounts/bindings/accounts_binding.dart';
import '../modules/homeFeatures/accounts/views/accounts_view.dart';
import '../modules/homeFeatures/activityLog/bindings/activity_log_binding.dart';
import '../modules/homeFeatures/activityLog/views/activity_log_view.dart';
import '../modules/homeFeatures/createNotice/bindings/create_notice_binding.dart';
import '../modules/homeFeatures/createNotice/views/create_notice_view.dart';
import '../modules/homeFeatures/exMemberList/bindings/ex_member_list_binding.dart';
import '../modules/homeFeatures/exMemberList/views/ex_member_list_view.dart';
import '../modules/homeFeatures/memberList/bindings/member_list_binding.dart';
import '../modules/homeFeatures/memberList/views/member_list_view.dart';
import '../modules/homeFeatures/taskSchedule/bindings/task_schedule_binding.dart';
import '../modules/homeFeatures/taskSchedule/views/task_schedule_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/mainApp/bindings/main_app_binding.dart';
import '../modules/mainApp/views/main_app_view.dart';
import '../modules/message/bindings/message_binding.dart';
import '../modules/message/views/message_view.dart';
import '../modules/navView/bindings/nav_view_binding.dart';
import '../modules/navView/views/nav_view_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/signUp/bindings/sign_up_binding.dart';
import '../modules/signUp/views/sign_up_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.NAV_VIEW,
      page: () => const NavViewView(),
      binding: NavViewBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_APP,
      page: () => const MyApp(),
      binding: MainAppBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => const MessageView(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: _Paths.MEMBER_LIST,
      page: () => const MemberListView(),
      binding: MemberListBinding(),
    ),
    GetPage(
      name: _Paths.EX_MEMBER_LIST,
      page: () => const ExMemberListView(),
      binding: ExMemberListBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNTS,
      page: () => const AccountsView(),
      binding: AccountsBinding(),
    ),
    GetPage(
      name: _Paths.TASK_SCHEDULE,
      page: () => const TaskScheduleView(),
      binding: TaskScheduleBinding(),
    ),
    GetPage(
      name: _Paths.ACTIVITY_LOG,
      page: () => const ActivityLogView(),
      binding: ActivityLogBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_NOTICE,
      page: () => const CreateNoticeView(),
      binding: CreateNoticeBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
  ];
}
