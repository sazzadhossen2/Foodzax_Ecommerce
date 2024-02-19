import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helpers.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'T_brand_card.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });
  final List<String>images;
  @override
  Widget build(BuildContext context) {
    return TRoudedContainer(
      showborder: true,
      bordercolor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(showBorder: false),
          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }
  Widget brandTopProductImageWidget (String image,context){
    return   Expanded(
      child: TRoudedContainer(
        height: 100,
        backgroundColor: THelperFunction.isDarkMode(context)?TColors.darkGrey:TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(fit: BoxFit.cover,image: AssetImage(image),),
      ),
    );
  }
}

