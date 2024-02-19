import 'package:flutter/material.dart';
import 'package:foodzax/common/styles/spacing.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/constants/text_string.dart';
import 'package:foodzax/utils/helpers/helpers.dart';

class TSuccessScreen extends StatelessWidget {
  const TSuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPress});

  final String image, title, subTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight*2,
          child: Column(
            children: [
              ///image
              Image(image: AssetImage(image),width: THelperFunction.screenWidth()*0.6),
              const SizedBox(height: TSizes.spaceBtwSection),

              ///Title & sub Title
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSection,),
              Text(subTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSection),

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: onPress, child: const Text(TTexts.tcontinue))),
            ],
          ),
        ),
      ),
    );
  }
}
