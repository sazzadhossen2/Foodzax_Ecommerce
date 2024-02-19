
import 'package:flutter/material.dart';
import 'package:foodzax/features/authentication/screens/password_confirmation/reset_password.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
      Text(TTexts.forgetPassword,style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSizes.spaceBtwSection * 2,),
            ///Text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems,),
            ///Submit Button

            SizedBox(
              width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Get.off(const ResetPassword());
                }, child: const Text(TTexts.submit)))
          ],
        ),
      ),
    );
  }
}
