import 'package:cut_my_garden/screens/dashboard/view/dashboard_screen.dart';
import 'package:cut_my_garden/screens/landing_page/controller/landing_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../reusable_widgets/side_menu/custom_side_menu.dart';
import '../../bookings/view/booking_screen.dart';
import '../../enquiries/view/enquiries_screen.dart';
import '../../gardeners/gardener_compliance/view/gardener_compliance_screen.dart';
import '../../gardeners/gardener_profile/view/gardener_profile_screen.dart';
import '../../gardeners/gardeners_landing_page/view/gardeners_landing_screen.dart';
import '../../report/view/report_screen.dart';

class LandingScreen extends StatelessWidget {
  final bool? isNavigated;

  const LandingScreen({
    super.key,
    this.isNavigated,
  });

  @override
  Widget build(BuildContext context) {
    final landingPageController = Get.find<LandingPageController>();
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Obx(() {
            return CustomSideMenu(
              isNavigated: isNavigated,
              sideMenu: landingPageController.sideMenu,
              isCollapsed: landingPageController.isCollapsed.value,
              onDisplayModeChanged: (mode) {
                landingPageController.modeChanged(mode);
              },
            );
          }),
          Expanded(
            child: PageView(
              controller: landingPageController.pageController,
              onPageChanged: (index) {
                landingPageController.pageChanged(pageIndex: index);
              },
              children: [
                const DashBoardScreen(),
                const BookingScreen(),
                const EnquiriesScreen(),
                const GardenersLandingScreen(),
                const GardenerProfileScreen(),
                const GardenerComplianceScreen(),
                const ReportScreen(),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Download',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Settings',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Only Title',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Only Icon',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
