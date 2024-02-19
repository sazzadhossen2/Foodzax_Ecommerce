import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/common/widget/brandCard/T_brand_card.dart';
import 'package:foodzax/common/widget/layouts/grid_layouts.dart';
import 'package:foodzax/common/widget/texts/section_heading.dart';
import 'package:foodzax/features/shop/screens/brand/brand_products.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';


class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        titles: Text('Brand'),
        showBackArrow: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Heading
            const TSectionHeading(title: 'Brand'),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            ///Brands
            TGridLayout(
              itemCount: 10,
              mainAxisExtent: 80,
              itemBuilder: (BuildContext, int) {
                return TBrandCard(showBorder: true,onTap: ()=>Get.to(()=>const BrandProducts()),);
              },
            )
          ],
        ),
      ),
    );
  }
}
