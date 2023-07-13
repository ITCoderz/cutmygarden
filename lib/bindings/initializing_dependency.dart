import 'package:cut_my_garden/screens/landing_page/controller/landing_page_controller.dart';
import 'package:get/get.dart';

import '../screens/gardeners/gardener_profile/controller/gardener_profile_controller.dart';

class InitializingDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LandingPageController(),
      fenix: true,
    );
    Get.lazyPut(
      () => GardenerProfileController(),
      fenix: true,
    );
  }
}
