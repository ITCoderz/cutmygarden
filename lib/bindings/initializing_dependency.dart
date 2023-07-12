import 'package:cut_my_garden/screens/landing_page/controller/landing_page_controller.dart';
import 'package:get/get.dart';

class InitializingDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LandingPageController(),
      fenix: true,
    );
  }
}
