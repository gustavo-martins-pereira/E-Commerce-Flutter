import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../controllers/on_boarding_controller.dart';

class DotNavigator extends StatelessWidget {
  const DotNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    bool isDarkMode = CHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom:
          CDeviceUtils.getBottomNavigationBarHeight() + CSizes.defaultSpace * 2,
      left: CSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 10,
          activeDotColor: isDarkMode ? CColors.white : CColors.dark,
        ),
        onDotClicked: controller.dotNavigationClick,
      ),
    );
  }
}
