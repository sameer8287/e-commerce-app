import 'package:e_commerce_app/features/authentication/screens/login_screen/login_screen.dart';
import 'package:e_commerce_app/utils/logging/logger.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    TLoggerHelper.debug("Dot Navigator");
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    TLoggerHelper.debug("Next Page");
    if (currentPageIndex.value == 2) {
      Get.offAll(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    Get.offAll(LoginScreen());
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
