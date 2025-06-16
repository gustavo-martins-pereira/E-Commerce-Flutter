import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class OnBoardingPage extends StatelessWidget {
  final String image, title, subtitle;

  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: CDeviceUtils.getScreenWidth(context) * 0.8,
            height: CDeviceUtils.getScreenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: CSizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
