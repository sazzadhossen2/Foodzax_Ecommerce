import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:foodzax/common/widget/images/t_round_images.dart';
import 'package:foodzax/common/widget/product_price/product_price.dart';
import 'package:foodzax/common/widget/texts/TProduct_title_text.dart';
import 'package:foodzax/common/widget/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:foodzax/utils/constants/image_strings.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/t_circular_icons.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});



  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(

    borderRadius: BorderRadius.circular(TSizes.productImageRadius),
    color: dark ? TColors.darkerGrey : TColors.softGrey,
    ),
    child: Row(
      children: [
        TRoudedContainer(
          height: 120,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark?TColors.dark:TColors.white,
          child: Stack(
            children: [
              const SizedBox(
                height: 120,
                width: 120,
                child: TRoubdImage(imageurl: TImages.product4,applyImageRadius: true,),
              ),
              Positioned(
                top: 12,
                child: TRoudedContainer(
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
              ),
              const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ))
            ],
          ),
        ),

        ///Details
        SizedBox(
          width: 172,
          child: Padding(
            padding: const EdgeInsets.only(top: TSizes.sm,left: TSizes.sm),
            child: Column(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(title: 'Green Nike Half Sleeves shirt',smallsize: true,),
                    SizedBox(height: TSizes.spaceBtwItems/2,),
                    TBrandTitleWithVerifiedIcon(title: 'Nike'),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SProductPrice(price: '256.0'),
                    ///Add to Cart
                    Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(TSizes.productImageRadius),
                        ),
                      ),
                      child: const SizedBox(
                        width: TSizes.iconLg * 1.2,
                        height: TSizes.iconLg * 1.2,
                        child: Icon(
                          Iconsax.add,
                          color: TColors.white,
                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
        )
      ],
    ),
    );
  }
}
