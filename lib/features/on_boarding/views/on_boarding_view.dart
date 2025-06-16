import 'package:ecommerce/features/on_boarding/controllers/on_boarding_controller.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts_strings.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/images_paths.dart';
import '../widgets/circular_button.dart';
import '../widgets/dot_navigator.dart';
import '../widgets/on_boarding_page.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: CImages.onBoardingImage1,
                title: CTexts.onBoardingTitle1,
                subtitle: CTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CImages.onBoardingImage2,
                title: CTexts.onBoardingTitle2,
                subtitle: CTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: CImages.onBoardingImage3,
                title: CTexts.onBoardingTitle3,
                subtitle: CTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          Positioned(
            top: CDeviceUtils.getAppBarHeight(),
            right: CSizes.defaultSpace,
            child: TextButton(
              onPressed: () => controller.skipPage(),
              child: Text("Skip"),
            ),
          ),

          // Dot Navigation (SmoothPageIndicator)
          DotNavigator(),

          // Circular Button
          CircularButton(),
        ],
      ),
    );
  }
}
