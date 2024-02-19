import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class UserAddNewScreen extends StatelessWidget {
  const UserAddNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,titles: Text('Add new Adress'),
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Name'),),
                const SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'Phone Number'),),
                const SizedBox(height: TSizes.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Street'),)),
                    const SizedBox(width: TSizes.spaceBtwInputFields,),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'post code'))),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'City'))),
                    const SizedBox(width: TSizes.spaceBtwInputFields,),
                   Expanded(child:  TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'State')),),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'Country'),),
                const SizedBox(height: TSizes.defaultSpace,),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){},child: const Text('Save'),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
