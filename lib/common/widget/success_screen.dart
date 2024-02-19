import 'package:flutter/material.dart';
import 'package:foodzax/common/styles/spacing.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/constants/text_string.dart';
import 'package:foodzax/utils/helpers/helpers.dart';

class SuccessScreen extends StatelessWidget {
   const SuccessScreen({super.key, required this.images, required this.title, required this.subtitle, required this.onTap});
 final String images,title,subtitle;
 final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body:
      Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            ///images
            Image(
              image: AssetImage(images),
              width: THelperFunction.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSection,
            ),

            ///Title & subTitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: TSizes.spaceBtwSection,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSection,
            ),

            ///Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onTap,
                child: const Text(TTexts.tcontinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
