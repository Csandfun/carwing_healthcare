import 'package:get/get.dart';

import '../modules/Attendees/bindings/attendees_binding.dart';
import '../modules/Attendees/views/attendees_view.dart';
import '../modules/Create_event/bindings/create_event_binding.dart';
import '../modules/Create_event/views/create_event_view.dart';
import '../modules/Dashboard/bindings/dashboard_binding.dart';
import '../modules/Dashboard/views/dashboard_view.dart';
import '../modules/Feesback/bindings/feesback_binding.dart';
import '../modules/Feesback/views/feesback_view.dart';
import '../modules/First/bindings/first_binding.dart';
import '../modules/First/views/first_view.dart';
import '../modules/Inbox/bindings/inbox_binding.dart';
import '../modules/Inbox/views/inbox_view.dart';
import '../modules/Navbar/bindings/navbar_binding.dart';
import '../modules/Navbar/views/navbar_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/Upcoming/bindings/upcoming_binding.dart';
import '../modules/Upcoming/views/upcoming_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/my_events/bindings/my_events_binding.dart';
import '../modules/my_events/views/my_events_view.dart';
import '../modules/organizer_page/bindings/organizer_page_binding.dart';
import '../modules/organizer_page/views/organizer_page_view.dart';

// import '../modules/Shared_events/bindings/my_events_binding.dart';
// import '../modules/Shared_events/views/my_events_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FIRST,
      page: () => const FirstView(),
      binding: FirstBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
      name: _Paths.UPCOMING,
      page: () => const UpcomingView(),
      binding: UpcomingBinding(),
    ),
    GetPage(
      name: _Paths.MY_EVENTS,
      page: () => const MyEventsView(),
      binding: MyEventsBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_EVENT,
      page: () => CreateEventView(),
      binding: CreateEventBinding(),
    ),
    GetPage(
      name: _Paths.INBOX,
      page: () => const InboxView(),
      binding: InboxBinding(),
    ),
    GetPage(
      name: _Paths.ORGANIZER_PAGE,
      page: () => const OrganizerPageView(),
      binding: OrganizerPageBinding(),
    ),
    GetPage(
      name: _Paths.FEESBACK,
      page: () => const FeesbackView(),
      binding: FeesbackBinding(),
    ),
    GetPage(
      name: _Paths.ATTENDEES,
      page: () => AttendeesView(),
      binding: AttendeesBinding(),
    ),
  ];
}
