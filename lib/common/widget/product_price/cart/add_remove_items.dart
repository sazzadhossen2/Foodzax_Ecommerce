import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helpers.dart';
import '../../icons/t_circular_icons.dart';

class TProductQuantityWithAddRemove extends StatelessWidget {
  const TProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TCircularIcon(icon:Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: THelperFunction.isDarkMode(context)?TColors.white:TColors.dark,
          backgroundColor: THelperFunction.isDarkMode(context)?TColors.darkerGrey:TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSizes.spaceBtwItems,),

        const TCircularIcon(icon: Iconsax.add,
          height: 32,
          width: 32,
          size: TSizes.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
        )

      ],
    );
  }
}
