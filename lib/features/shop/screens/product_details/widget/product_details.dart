import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/texts/section_heading.dart';
import 'package:foodzax/features/shop/screens/product_details/widget/SProductAttributes.dart';
import 'package:foodzax/features/shop/screens/product_details/widget/button_add_toCart.dart';
import 'package:foodzax/features/shop/screens/product_details/widget/product_details_image_slider.dart';
import 'package:foodzax/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:foodzax/features/shop/screens/product_details/widget/rating_and_share.dart';
import 'package:foodzax/features/shop/screens/product_review/product_reviews.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SProductImageSlider(),

            Padding(
              padding:  const EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ///rating share
                  const SRatingAndShare(),
                  ///price ,title,stock & Brand
                  const SProductMetaData(),
                  ///Attributs
                  const SProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  ///Cheeckout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSection,),
                  ///Description
                  const TSectionHeading(title: 'Description',showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
              const ReadMoreText(
                'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                trimLines: 2,
               // colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
                  ///Reviews
                const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Review(199)',showActionButton: false,),
                      IconButton(onPressed: (){
                        Get.to(()=>const ProductReviewScreen());
                      }, icon: const Icon(Iconsax.arrow_right_3,size: 18,),),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSection,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
