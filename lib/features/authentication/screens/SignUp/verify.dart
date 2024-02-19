import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/success_screen.dart';
import 'package:foodzax/features/authentication/screens/login/login.dart';
import 'package:foodzax/utils/constants/image_strings.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/constants/text_string.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(() => const Login());
              },
              icon: const Icon(Icons.close)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///images
            Image(
              image: const AssetImage(TImages.onboadin5),
              width: THelperFunction.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSection,
            ),

            ///Title & subTitle
            Text(
              TTexts.conFirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              'szaadhossen@gmail.com',
              style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSection,
            ),
            Text(
              TTexts.confirmEmailSubtitle,
              style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSection,
            ),

            ///Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                  Get.to(() => SuccessScreen(
                    images: TImages.onboadin6,
                    title: TTexts.yourAccountCreatedTitle,
                    subtitle: TTexts.yourAccountCreatedSubTitle,
                    onTap: () {
                      Get.to(() => const Login());
                    },
                  ));
                },
                child: const Text(TTexts.tcontinue),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {

                    },
                    child: const Text(TTexts.resendEmail))),
          ],
        ),
      ),
    );
  }
}
