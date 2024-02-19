import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:iconsax/iconsax.dart';

class TOrderList extends StatelessWidget {
  const TOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return  ListView.separated(itemBuilder: (context,index){
      return   TRoudedContainer(
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark?TColors.dark:TColors.light,
        showborder: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Row

            Row(
              children: [
                ///icon
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBtwItems/2),

                ///status & Date
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Processing',style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,fontWeightDelta: 1),),
                    Text('29 jan 2024',style: Theme.of(context).textTheme.headlineSmall,)
                  ],
                ),
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: TSizes.iconSm,)),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            ///Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSizes.spaceBtwItems/2),

                      ///status & Date
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order',style: Theme.of(context).textTheme.labelMedium),
                          Text('[#347g3]',style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      ///icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBtwItems/2),

                      ///status & Date
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shopping Date',style: Theme.of(context).textTheme.labelMedium),
                          Text('2 Jan 2024',style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),

          ],
        ),
      );
    }, separatorBuilder: (_,__){
      return const SizedBox(height: TSizes.spaceBtwItems,);
    }, itemCount: 5);

  }
}
