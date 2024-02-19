import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/productCard/productCarts/product_cart_vartical.dart';
import 'package:foodzax/features/shop/screens/all_products/all_products.dart';
import 'package:foodzax/features/shop/screens/home/widget/promo_slider.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/image_strings.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../../../common/widget/custom_shapes/containers/primary_header_container.dart';
import '../../../../../common/widget/custom_shapes/containers/search_container.dart';
import '../../../../../common/widget/layouts/grid_layouts.dart';
import '../../../../../common/widget/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';
import 'home_appbar.dart';
import 'home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),

                  ///Searching
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        ///Categories
                        THomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSection,),
                ],
              ),
            ),

            ///body --Tutorial [section #3]

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banner: [
                      TImages.product1,
                      TImages.product2,
                      TImages.product3,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),
                  TSectionHeading(title: 'Popular Product',onPress: ()=>Get.to(()=>const AllProducts())
                  ,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  
                  TGridLayout(
                    itemCount: 10,
                    itemBuilder: (BuildContext, int) {
                      return const TProductCartVartical();
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
