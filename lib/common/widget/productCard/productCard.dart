import 'package:flutter/material.dart';
import 'package:foodzax/features/shop/screens/cart/cart.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPress,
    this.countBgColors,
    this.counterTextColors,
  });

  final Color? iconColor, countBgColors, counterTextColors;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Stack(children: [
      IconButton(
          onPressed: ()=>Get.to(()=>const CartScreen()),
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          )),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: countBgColors??(dark?TColors.white:TColors.black),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
              child: Text(
            '2',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: TColors.white, fontSizeFactor: 0.8),
          )),
        ),
      )
    ]);
  }
}
