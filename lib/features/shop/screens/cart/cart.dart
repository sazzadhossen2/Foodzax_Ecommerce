import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/features/shop/screens/cart/widgets/cart_items_m.dart';
import 'package:foodzax/features/shop/screens/cheekout/checkout.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        titles: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body:const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child:CartItemsScreens()

        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){
          Get.to(()=>const CheekOutScreen());
        },child: const Text('Checkout \$378'),),
      ),

    );
  }
}


