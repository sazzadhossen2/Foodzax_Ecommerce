import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/features/personalization/screens/address/add_new_address.dart';
import 'package:foodzax/features/personalization/screens/address/widget/single_address.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=>Get.to(()=>const UserAddNewScreen()),
      backgroundColor: TColors.primary,
        child: const Icon(Iconsax.add,color: TColors.white,),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        titles: Text('Adress',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress:false),
              TSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
