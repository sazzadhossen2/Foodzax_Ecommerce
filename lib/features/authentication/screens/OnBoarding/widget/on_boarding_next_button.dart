
import 'package:flutter/material.dart';
import 'package:foodzax/features/authentication/controllersOnbiarding/onboarding_controller.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/helpers/helpers.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () {
            return OnBoardingController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),backgroundColor:dark? TColors.primary: Colors.black
          ),
          child: const Icon(Icons.arrow_forward_ios),
        ));
  }
}