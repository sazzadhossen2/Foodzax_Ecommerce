import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:foodzax/common/widget/texts/section_heading.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/image_strings.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/helpers/helpers.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunction.isDarkMode(context);
    return Column(
children: [
  TSectionHeading(title: 'Payment Method',buttonTitle: 'Change',onPress: (){},),
  const SizedBox(height: TSizes.spaceBtwItems/2,),

  Row(
    children: [
      TRoudedContainer(
        height: 35,
        widht: 60,
        backgroundColor: dark?TColors.light:TColors.white,
        padding: const EdgeInsets.all(TSizes.sm),
        child: const Image(image: AssetImage(TImages.paymet1),fit: BoxFit.contain,),
      ),
      const SizedBox(width: TSizes.spaceBtwItems/2,),
      Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,),
    ],
  )
],
    );
  }
}
