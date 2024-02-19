import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/image_strings.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:readmore/readmore.dart';

import '../../../../../common/widget/productCard/rating/ratings_indicator.dart';

class USerRivewCard extends StatelessWidget {
  const USerRivewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.review1),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('John Done',style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert)),
          ],
        ),
 const SizedBox(height: TSizes.spaceBtwItems,),
        ///Review
        Row(
          children: [
            const TRatingIndicator(rating: 5,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('01 Nov 2023',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height:TSizes.spaceBtwItems ),
    const ReadMoreText(
    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
    trimLines: 2,
   // colorClickableText: Colors.pink,
    trimMode: TrimMode.Line,
    trimCollapsedText: 'Show more',
    trimExpandedText: 'Show less',
    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColors.primary),
      lessStyle:TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColors.primary),
    ),

        const SizedBox(height: TSizes.spaceBtwItems,),

        ///Company
        TRoudedContainer(
          backgroundColor: dark?TColors.darkGrey:TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Foodzax ',style: Theme.of(context).textTheme.titleMedium,),
                    Text('21 Jan 2024',style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const ReadMoreText(
                  'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                  trimLines: 2,
                  //colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColors.primary),
                  lessStyle:TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSection,),
      ],
    );
  }
}
