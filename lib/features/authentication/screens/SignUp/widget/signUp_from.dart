import 'package:flutter/material.dart';
import 'package:foodzax/features/authentication/screens/SignUp/verify.dart';
import 'package:foodzax/features/authentication/screens/SignUp/widget/trams_and_condition.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class TSignUp extends StatelessWidget {
  const TSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.firstname,
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///username
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Icons.perm_contact_cal)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///email
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Icons.email)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///phone Number
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.phoneNumber, prefixIcon: Icon(Icons.call)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Icons.remove_red_eye_rounded),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          const TTermsAndCondition(),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///sign up button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=>const VerifyEmail());
                  }, child: const Text(TTexts.createdAccount))),
        ],
      ),
    );
  }
}
