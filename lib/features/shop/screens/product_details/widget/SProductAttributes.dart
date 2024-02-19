import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:foodzax/common/widget/product_price/product_price.dart';
import 'package:foodzax/common/widget/texts/TProduct_title_text.dart';
import 'package:foodzax/common/widget/texts/section_heading.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/helpers/helpers.dart';

import '../../../../../common/widget/chips/choice_Chip.dart';

class SProductAttributes extends StatelessWidget {
  const SProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Column(
      children: [
        TRoudedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark?TColors.darkGrey:TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const TProductTitleText(title: 'Price : ',smallsize: true,),
                        Text('\$25',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                        const SizedBox(width: TSizes.spaceBtwItems,),
                        const SProductPrice(price: '20')
                      ],
                    ),
                    Row(
                      children: [
                        const TProductTitleText(title: 'Stock : ',smallsize: true,),
                        Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),
                      ],
                    ),
                  ],
                ),
                ],
              ),
              ///variation
              const TProductTitleText(title: 'This is the Description of the product and it can go up to max 4 lines',
              maxLine: 4,
                smallsize: true,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        ///Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
       Wrap(
         spacing: 8,
         children: [
           SChoiceChips(text: 'Green', selected: false,onSelected: (value){},),
           SChoiceChips(text: 'Blue', selected: true,onSelected: (value){},),
           SChoiceChips(text: 'Yellow', selected: false,onSelected: (value){},),
         ],
       )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'size',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
Wrap(
  spacing: 8,
  children: [
    SChoiceChips(text: 'EU 34', selected: true,onSelected: (value){},),
    SChoiceChips(text: 'EU 36', selected: false,onSelected: (value){},),
    SChoiceChips(text: 'EU 38', selected: false,onSelected: (value){},),
  ],
)
          ],
        ),
      ],
    );
  }
}

