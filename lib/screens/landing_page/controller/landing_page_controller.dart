import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPageController extends GetxController {
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();
  final isCollapsed = false.obs;

  @override
  void onInit() {
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.onInit();
  }

  pageChanged({required int pageIndex}) {
    sideMenu.changePage(pageIndex);
  }

  modeChanged(SideMenuDisplayMode mode) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (mode.index == 1) {
        isCollapsed.value = false;
      } else {
        isCollapsed.value = true;
      }
    });
  }
}
