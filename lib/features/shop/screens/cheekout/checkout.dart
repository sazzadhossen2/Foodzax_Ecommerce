import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:foodzax/common/widget/success_screen/success_screen.dart';
import 'package:foodzax/features/shop/screens/cheekout/widget/billing_adress_section.dart';
import 'package:foodzax/features/shop/screens/cheekout/widget/billing_amount_section.dart';
import 'package:foodzax/features/shop/screens/cheekout/widget/billing_payment_section.dart';
import 'package:foodzax/navigation_menu.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/image_strings.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../common/widget/product_price/cart/cupon_widget.dart';
import '../cart/widgets/cart_items_m.dart';

class CheekOutScreen extends StatelessWidget {
  const CheekOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        //showBackArrow: true,
        titles: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CartItemsScreens(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              ///Cupon
              const TCuponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              ///Billing Section
              TRoudedContainer(
                showborder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    TBillingAmountSection(),
                    SizedBox(
                      height: TSizes.spaceBtwSection / 2,
                    ),

                    ///Divider
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBtwSection / 2,
                    ),

                    ///Payment Method
                    TBillingPaymentSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///Billing Adress Section
                    TBillingAdressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      ///Cheek Out
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => TSuccessScreen(
                image: TImages.paymentSuccess,
                title: 'Payment Success',
                subTitle: 'Your item will be shipping soon',
                onPress: () =>Get.offAll(()=>NavigationMenu()),
              )),
          child: const Text('Cheekout \$350'),
        ),
      ),
    );
  }
}
