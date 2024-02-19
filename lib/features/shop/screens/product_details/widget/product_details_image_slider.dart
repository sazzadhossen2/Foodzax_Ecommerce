
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/appbaer/appbar.dart';
import '../../../../../common/widget/custom_shapes/curved_edges/curved_edges_widgets.dart';
import '../../../../../common/widget/icons/t_circular_icons.dart';
import '../../../../../common/widget/images/t_round_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helpers.dart';

class SProductImageSlider extends StatelessWidget {
  const SProductImageSlider({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark?TColors.darkGrey:TColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius*2),
                child: Image(image: AssetImage(TImages.productimage2),),
              ),
            ),
            ///image Slider
            Positioned(
              bottom: 30,
              left: TSizes.defaultSpace,
              right: 0,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    separatorBuilder: (_,__){
                      return const SizedBox(width: TSizes.spaceBtwItems,);
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context,index){
                      return  TRoubdImage(imageurl: TImages.productimage1,
                        width: 80,
                        backgroundColor: dark?TColors.dark:TColors.white,
                        border: Border.all(color: TColors.primary),
                        padding: const EdgeInsets.all(TSizes.sm),
                      );
                    }),
              ),
            ),
            const TAppBar(
              showBackArrow: true,
              action: [
                TCircularIcon(icon: Iconsax.heart5,color:Colors.red,)
              ],
            )

          ],
        ),
      ),
    );
  }
}
