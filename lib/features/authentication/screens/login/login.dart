import 'package:flutter/material.dart';
import 'package:foodzax/common/styles/spacing.dart';
import 'package:foodzax/features/authentication/screens/login/widget/login_form.dart';
import 'package:foodzax/features/authentication/screens/login/widget/login_header.dart';

import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/constants/text_string.dart';

import '../../../../common/widgets.login.signup/form_divider.dart';
import '../../../../common/widgets.login.signup/social_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo,title & nSub title
              TLoginHeader(),

              ///form
              TLoginForm(),

              ///Divider
              TFormDivider(
                dividerText: TTexts.orSignUpWith,
              ),

              SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              ///footer
              TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
