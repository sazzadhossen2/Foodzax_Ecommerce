import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/product_price/product_price.dart';
import 'package:foodzax/common/widget/texts/TProduct_title_text.dart';
import 'package:foodzax/common/widget/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:foodzax/utils/constants/enums.dart';
import 'package:foodzax/utils/helpers/helpers.dart';

import '../../../../../common/widget/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SProductMetaData extends StatelessWidget {
  const SProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price ,salse
        Row(
          children: [
            TRoudedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const SProductPrice(price: '750',isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        ///title
        const TProductTitleText(title: 'Green Nike Sports shart'),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        ///Stock
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        ///Brand
        const TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSize.medium,),
        // Row(
        //   children: [
        //     TCircularImage(image: TImages.product4,height: 32,width: 32,overlayercolor: dark?TColors.white:TColors.black,),
        //     TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSize.medium,),
        //   ],
        // ),
      ],
    );
  }
}
