import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/common/widget/images/t_round_images.dart';
import 'package:foodzax/common/widget/productCard/productCarts/product_cart_horizontal.dart';
import 'package:foodzax/common/widget/texts/section_heading.dart';
import 'package:foodzax/utils/constants/image_strings.dart';
import 'package:foodzax/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: const TAppBar(titles: Text('Sports'),showBackArrow: true,),
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoubdImage(imageurl: TImages.banner3,width: double.infinity,),
              const SizedBox(height: TSizes.spaceBtwSection,),

              ///Sub catrgory
              Column(
                children: [
                  TSectionHeading(title: 'Sports shirts',onPress: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems/2,),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(itemBuilder: (context,index){
                      return const TProductCardHorizontal();
                    }, separatorBuilder: (context,index){
                      return const SizedBox(width: TSizes.spaceBtwItems,);
                    }, itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    ),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
