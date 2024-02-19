import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/texts/t_brand_title_text.dart';
import 'package:foodzax/utils/constants/enums.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines=1,
    this.textColor,
    this.textAlign=TextAlign.center,
     this.brandTextSize=TextSize.small,
    this.iconColors=TColors.primary,
  });

  final String title;
  final int maxLines;
  final Color? textColor;
     final Color iconColors;
  final TextAlign? textAlign;
  final TextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child:
        TBrandTitleText(title: title,
          color: textColor,
          maxLine: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,

        )),
        const SizedBox(
          width: TSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          size: TSizes.iconXs,
          color: TColors.primary,
        )
      ],
    );
  }
}
