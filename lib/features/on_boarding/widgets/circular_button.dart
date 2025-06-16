import 'package:ecommerce/features/on_boarding/controllers/on_boarding_controller.dart';
import 'package:ecommerce/utils/helpers/functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = CHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: CDeviceUtils.getBottomNavigationBarHeight() + CSizes.defaultSpace,
      right: CSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          backgroundColor: isDarkMode ? CColors.primary : CColors.black,
          shape: const CircleBorder(),
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
