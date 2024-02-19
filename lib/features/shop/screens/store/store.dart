import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/common/widget/custom_shapes/containers/search_container.dart';
import 'package:foodzax/common/widget/layouts/grid_layouts.dart';
import 'package:foodzax/common/widget/productCard/productCard.dart';
import 'package:foodzax/common/widget/texts/section_heading.dart';
import 'package:foodzax/features/shop/screens/store/widget/TCategoryTab.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../common/widget/appbaer/t_tabBar.dart';
import '../../../../common/widget/brandCard/T_brand_card.dart';
import '../brand/all_brand.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: TAppBar(
            titles: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            action: [
              TCartCounterIcon(iconColor: TColors.grey, onPress: () {})
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScroll) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunction.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        TSectionHeading(
                          title: 'Feature Brands',
                          onPress: () =>
                            Get.to(()=>const AllBrandsScreen()),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const TBrandCard(showBorder: false,);
                            })
                      ],
                    ),
                  ),
                  bottom: const TTabBar(tabs: [
                      Tab(child: Text("Sports"),),
                      Tab(child: Text("Furniture"),),
                      Tab(child: Text("Electronics"),),
                      Tab(child: Text('Clothes'),),
                      Tab(child: Text('Cosmetics'),),

                  ],),
                )
              ];
            },
            body:  const TabBarView(children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ]),
          )),
    );
  }
}


