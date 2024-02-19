import 'package:flutter/material.dart';
import 'package:foodzax/features/authentication/controllersOnbiarding/onboarding_controller.dart';
import 'package:foodzax/utils/constants/image_strings.dart';
import 'package:foodzax/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'widget/onBoarderingNAvigator.dart';
import 'widget/onBoarding_page.dart';
import 'widget/onBoarding_skip.dart';
import 'widget/on_boarding_next_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingwidget(
                  title: TTexts.onBoardingTitle1,
                  images: TImages.onboadin1,
                  subtitle: TTexts.onBoardingSubTitle1),
              OnBoardingwidget(
                  title: TTexts.onBoardingTitle2,
                  images: TImages.onboadin3,
                  subtitle: TTexts.onBoardingSubTitle2),
              OnBoardingwidget(
                  title: TTexts.onBoardingTitle3,
                  images: TImages.onboadin2,
                  subtitle: TTexts.onBoardingSubTitle3),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingNavigator(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
