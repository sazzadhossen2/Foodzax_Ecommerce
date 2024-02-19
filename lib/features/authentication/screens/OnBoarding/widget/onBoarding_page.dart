
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helpers.dart';

class OnBoardingwidget extends StatelessWidget {
  const OnBoardingwidget({
    super.key,
    required this.title,
    required this.images,
    required this.subtitle,
  });

  final String title, images, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            height: THelperFunction.screenHeight() * 0.6,
            width: THelperFunction.screenWidth() * 0.8,
            image: AssetImage(images),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}