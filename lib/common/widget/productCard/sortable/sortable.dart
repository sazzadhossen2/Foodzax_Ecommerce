import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layouts.dart';
import '../productCarts/product_cart_vartical.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              'Name',
              'Higher Price',
              'Lower price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((option) => DropdownMenuItem(
              value: option,
              child: Text(option),
            ))
                .toList(),
            onChanged: (value) {}),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        ///Product
        TGridLayout(
            itemCount: 8,
            itemBuilder: (context, index) {
              return const TProductCartVartical();
            })
      ],
    );
  }
}
