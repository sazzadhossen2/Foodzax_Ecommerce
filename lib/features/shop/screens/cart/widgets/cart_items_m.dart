import 'package:flutter/cupertino.dart';

import '../../../../../common/widget/product_price/cart/add_remove_items.dart';
import '../../../../../common/widget/product_price/cart/cart_item.dart';
import '../../../../../common/widget/product_price/product_price.dart';
import '../../../../../utils/constants/sizes.dart';

class CartItemsScreens extends StatelessWidget {
  const CartItemsScreens({super.key,
    this.showAddRemoveButton=true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const TCartItem(),
              if(showAddRemoveButton)
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              if(showAddRemoveButton)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),

                      ///Add Remove Button
                      TProductQuantityWithAddRemove(),
                    ],
                  ),

                  ///product price
                  SProductPrice(price: '257')
                ],
              )
            ],
          );
        },
        separatorBuilder: (_, __) {
          return const SizedBox(
            height: TSizes.spaceBtwSection,
          );
        },
        itemCount: 3);
  }
}
