import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/common/widget/icons/t_circular_icons.dart';
import 'package:foodzax/common/widget/layouts/grid_layouts.dart';
import 'package:foodzax/common/widget/productCard/productCarts/product_cart_vartical.dart';
import 'package:foodzax/features/shop/screens/home/widget/home.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        titles: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
        action: [
          TCircularIcon(icon: Iconsax.add,onPressed: ()=>Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 6, itemBuilder: (context,index){
                return const TProductCartVartical();
              })
            ],
          ),
        ),
      ),
    );
  }
}
