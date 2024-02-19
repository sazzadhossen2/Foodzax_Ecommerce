
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodzax/utils/constants/image_strings.dart';
import 'package:foodzax/utils/constants/text_string.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helpers.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
      actions: [
        IconButton(onPressed: (){
          Get.back();
        }, icon:const Icon(CupertinoIcons.clear))
      ],
      ),

      body:
      Padding(
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
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,textAlign:TextAlign.center,
            ),

            const SizedBox(
              height: TSizes.spaceBtwSection,
            ),
            Text(
              TTexts.changePasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSection,
            ),

            ///Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: const Text(TTexts.done),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)))
          ],
        ),
      ),
    );
  }
}
