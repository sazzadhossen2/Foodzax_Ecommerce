import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helpers.dart';
import '../../images/t_round_images.dart';
import '../../texts/TProduct_title_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Row(
      children: [
        TRoubdImage(imageurl: TImages.productimage1,
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark?TColors.darkerGrey:TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        ///Title ,price & size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: TProductTitleText(title: 'Black Shart',maxLine: 1,)),
              ///Attribute
              Text.rich(TextSpan(
                  children: [
                    TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Ul 08',style: Theme.of(context).textTheme.bodyLarge),
                  ]
              ))
          
            ],
          ),
        )
      ],
    );
  }
}
