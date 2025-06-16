import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;

    pageController.jumpToPage(index);
  }

  // Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to("login");
    } else {
      int newIndex = currentPageIndex.value + 1;

      pageController.jumpToPage(newIndex);
    }
  }

  // Update Current Index & jump to the last Page
  void skipPage() {
    // Get.to("login");
  }
}
