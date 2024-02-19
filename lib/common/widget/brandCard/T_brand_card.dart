import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helpers.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/t_circular_image.dart';
import '../texts/t_brand_title_text_with_verified_icon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder,
    this.onTap,
  });
final bool showBorder;
final void Function()?onTap;
  @override
  Widget build(BuildContext context) {
    final isDark=THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoudedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showborder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///icon
             Flexible(
              child: TCircularImage(
                image: TImages.nikelogo,
                isNetworkimage: false,
                backgroundColor: Colors.transparent,
                overlayercolor:isDark
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                  ),
                  Text(
                    '256 products product cards',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
