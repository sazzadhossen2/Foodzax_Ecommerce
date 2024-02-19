
import 'package:flutter/material.dart';
import 'package:foodzax/utils/device/device_utility.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helpers.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key, required this.tabs,
  });
final List<Widget>tabs;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Material(
      color: dark?TColors.black:TColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        labelColor: THelperFunction.isDarkMode(context)?TColors.white:TColors.primary,
        tabs:tabs
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}