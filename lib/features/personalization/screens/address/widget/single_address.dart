import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TRoudedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      widht: double.infinity,
      showborder: true,
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      bordercolor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? TColors.light
                      : TColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sazzad Hossen',
              maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm/2,),
              const Text('+880188790513',maxLines: 1,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: TSizes.sm/2,),
              const Text('3751 Timmy Covers, South Liana, Mina,3742,USA',softWrap: true,),
            ],
          )
        ],
      ),
    );
  }
}
