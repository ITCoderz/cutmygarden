import 'package:cut_my_garden/screens/bookings/view/booking_screen.dart';
import 'package:cut_my_garden/screens/dashboard/view/dashboard_screen.dart';
import 'package:cut_my_garden/screens/enquiries/view/enquiries_screen.dart';
import 'package:cut_my_garden/screens/gardeners/gardener_compliance/view/gardener_compliance_screen.dart';
import 'package:cut_my_garden/screens/report/view/report_screen.dart';
import 'package:cut_my_garden/screens/reviews/screen/review_screen.dart';
import 'package:go_router/go_router.dart';

import '../screens/clients/view/clients_screen.dart';
import '../screens/communication/view/communication_screen.dart';
import '../screens/gardeners/gardener_profile/view/gardener_profile_screen.dart';
import '../screens/gardeners/gardeners_landing_page/view/gardeners_landing_screen.dart';
import '../screens/revenue/view/revenue_screen.dart';
import '../utils/constants/constant_strings.dart';

class GoRouterHelperClass {
  GoRouterHelperClass._();

  static final GoRouter router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        name: ConstantStrings.dashBoardRouteName,
        path: ConstantStrings.dashBoardScreenRoute,
        builder: ((context, state) => const DashBoardScreen()),
      ),
      GoRoute(
        name: ConstantStrings.bookingScreenName,
        path: ConstantStrings.bookingScreenRoute,
        builder: ((context, state) => const BookingScreen()),
      ),
      GoRoute(
        name: ConstantStrings.enquiriesScreenName,
        path: ConstantStrings.enquiriesScreenRoute,
        builder: ((context, state) => const EnquiriesScreen()),
      ),
      GoRoute(
        name: ConstantStrings.gardenerLandingScreenName,
        path: ConstantStrings.gardenerLandingScreenRoute,
        builder: ((context, state) => const GardenersLandingScreen()),
      ),
      GoRoute(
        name: ConstantStrings.gardenerProfileScreenName,
        path: ConstantStrings.gardenerProfileScreenRoute,
        builder: ((context, state) => const GardenerProfileScreen()),
      ),
      GoRoute(
        name: ConstantStrings.gardenerComplianceScreenName,
        path: ConstantStrings.gardenerComplianceScreenRoute,
        builder: ((context, state) => const GardenerComplianceScreen()),
      ),
      GoRoute(
        name: ConstantStrings.reportScreenName,
        path: ConstantStrings.reportScreenRoute,
        builder: ((context, state) => const ReportScreen()),
      ),
      GoRoute(
        name: ConstantStrings.clientScreenName,
        path: ConstantStrings.clientScreenRoute,
        builder: ((context, state) => const ClientsScreen()),
      ),
      GoRoute(
        name: ConstantStrings.reviewScreenName,
        path: ConstantStrings.reviewScreenRoute,
        builder: ((context, state) => const ReviewScreen()),
      ),
      GoRoute(
        name: ConstantStrings.communicationScreenName,
        path: ConstantStrings.communicationScreenRoute,
        builder: ((context, state) => const CommunicationScreen()),
      ),
      GoRoute(
        name: ConstantStrings.revenueScreenName,
        path: ConstantStrings.revenueScreenRoute,
        builder: ((context, state) => const RevenueScreen()),
      ),
    ],
  );
}
