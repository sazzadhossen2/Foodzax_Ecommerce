import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/texts/section_heading.dart';
import 'package:foodzax/utils/constants/sizes.dart';

class TBillingAdressSection extends StatelessWidget {
  const TBillingAdressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Adress',buttonTitle: 'Change',onPress: (){}),
        Text('Sazzad Hossen',style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('+88018864996',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('South Liana, Maine 4556744 USA',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)
          ],
        )
      ],
    );
  }
}
