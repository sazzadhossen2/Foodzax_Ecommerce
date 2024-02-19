import 'package:flutter/material.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:foodzax/utils/device/device_utility.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.titles,
      this.showBackArrow = false,
      this.leadingIcon,
      this.action,
      this.leadingOnProgress});

  final Widget? titles;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnProgress;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Iconsax.arrow_left,color: dark?TColors.white:TColors.dark,))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnProgress, icon: Icon(leadingIcon))
                : null,
        title: titles,
        actions: action,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
