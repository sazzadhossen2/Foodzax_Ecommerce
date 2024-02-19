import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/common/widget/custom_shapes/containers/primary_header_container.dart';
import 'package:foodzax/common/widget/profile_list_tile/settings_menu_tile.dart';
import 'package:foodzax/common/widget/texts/section_heading.dart';
import 'package:foodzax/features/personalization/screens/address/address.dart';
import 'package:foodzax/features/personalization/screens/profile/profile.dart';
import 'package:foodzax/features/shop/screens/order/order.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widget/profile_list_tile/profile_list_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Header
                  TAppBar(
                    titles: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  ///user profile card
                   TUserProfile(onPress: () {
                    Get.to(()=>const ProfileScreen());
                  },),
                  const SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const TSectionHeading(title: 'Account Setting',showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                 TSettingsMenueTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle:'set Shopping delivery address',onTap: ()=>Get.to(()=>const UserAddressScreen()),),
               const TSettingsMenueTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove product and move to checkout'),
                 TSettingsMenueTile(icon: Iconsax.bag_tick, title: 'My Order', subTitle:'In-progress and Completed Orders',onTap: ()=>Get.to(()=>const OrderScreen()),),
                const TSettingsMenueTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account'),
                const TSettingsMenueTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all The discounted coupons'),
                const TSettingsMenueTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message'),
                const TSettingsMenueTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected account'),


                ///App Setting
                const SizedBox(height: TSizes.spaceBtwSection,),
                const TSectionHeading(title: 'App Setting',showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const TSettingsMenueTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle:'Upload Data Cloud Firebase'),
               TSettingsMenueTile(icon: Iconsax.location, title: 'Geolocation', subTitle:'Set recommendation based on location',
               trilling: Switch(value: true,onChanged: (value){},),
               ),
                TSettingsMenueTile(icon: Iconsax.security_user, title: 'Safe Mode', subTitle: 'Search result is safe for all ages',
                trilling: Switch(value: false,onChanged: (value){},),
                ),
                TSettingsMenueTile(icon: Iconsax.image, title: 'HD Image Quality', subTitle:'Set image quality to be seen',
                trilling: Switch(value: false,onChanged: (value){},),
                ),

                ///Logut
                const SizedBox(height: TSizes.spaceBtwSection,),
                Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(onPressed: (){}, child: const Text('Logout'))),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSection *2.5,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

