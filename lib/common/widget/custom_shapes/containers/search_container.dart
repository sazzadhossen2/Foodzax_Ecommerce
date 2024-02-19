import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helpers.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon=Iconsax.search_normal,
    this.showBackground=true,
    this.showBorder=true,
    this.onTAp,
     this.padding=const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTAp;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTAp,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWeight(),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
              color:showBackground?dark?TColors.dark:TColors.light: Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              border:showBorder? Border.all(color: TColors.grey):null
          ),
          child: Row(
            children: [
              Icon(icon,
                color: TColors.darkerGrey,
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}