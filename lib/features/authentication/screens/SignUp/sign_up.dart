import 'package:flutter/material.dart';
import 'package:foodzax/common/widgets.login.signup/form_divider.dart';
import 'package:foodzax/common/widgets.login.signup/social_button.dart';
import 'package:foodzax/features/authentication/screens/SignUp/widget/signUp_from.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/constants/text_string.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              ///form
              const TSignUp(),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),

              ///social button
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
