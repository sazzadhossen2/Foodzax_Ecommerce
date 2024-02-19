import 'package:flutter/cupertino.dart';
import 'package:foodzax/common/widget/layouts/grid_layouts.dart';
import 'package:foodzax/common/widget/productCard/productCarts/product_cart_vartical.dart';
import 'package:foodzax/common/widget/texts/section_heading.dart';

import '../../../../../common/widget/brandCard/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[ Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const TBrandShowcase(images: [
              TImages.nike2,
              TImages.nike3,
              TImages.nike4
            ],),
            const TBrandShowcase(images: [
              TImages.nike2,
              TImages.nike3,
              TImages.nike4
            ],),
            const SizedBox(height: TSizes.spaceBtwItems,),
            ///product
            TSectionHeading(title: 'You might Like',onPress: (){},),
            const SizedBox(height: TSizes.spaceBtwItems,),

            TGridLayout(itemCount: 6, itemBuilder: (BuildContext , int ) {
              return const TProductCartVartical();
            },),
            const SizedBox(height: TSizes.spaceBtwSection,)
          ],
        ),
      ),]
    );
  }
}

