import 'package:flutter/material.dart';
import 'package:foodzax/features/authentication/screens/SignUp/sign_up.dart';
import 'package:foodzax/features/authentication/screens/password_confirmation/forget_password.dart';
import 'package:foodzax/navigation_menu.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/text_string.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: TSizes.spaceBtwSection),
          child: Column(
            children: [
              TextFormField(
                decoration:const InputDecoration(
                    prefixIcon: Icon(Icons.arrow_circle_right),
                    labelText: TTexts.email),
              ),
             const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),

              ///password
              TextFormField(
                decoration:const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                ),
              ),
            const  SizedBox(
                height: TSizes.spaceBtwInputFields / 2,
              ),

              ///Remember Me & Forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(TTexts.rememberMe),
                    ],
                  ),

                  ///forget password
                  TextButton(
                      onPressed: () {
                 Get.to(()=>const ForgetPassword());
                      },
                      child:const Text(TTexts.forgetPassword)),
                ],
              ),
            const  SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              ///Sign in button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(()=>NavigationMenu());
                      }, child:const Text(TTexts.signIn))),

            const  SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///Create Account Button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Get.offAll(const SignUpScreen());
                      },
                      child:const Text(TTexts.createdAccount))),
            const  SizedBox(
                height: TSizes.spaceBtwItems,
              ),
            ],
          ),
        ));
  }
}