

import 'package:flutter/cupertino.dart';
import 'package:foodzax/features/authentication/controllersOnbiarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helpers.dart';

class OnBoardingNavigator extends StatelessWidget {
  const OnBoardingNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    final dark =THelperFunction.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight()+25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller:controller.pageController,

          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(activeDotColor:dark?TColors.light: TColors.dark,dotHeight: 6 ),
        ));
  }
}