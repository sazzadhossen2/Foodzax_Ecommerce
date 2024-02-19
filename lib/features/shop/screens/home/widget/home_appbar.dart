

import 'package:flutter/material.dart';

import '../../../../../common/widget/appbaer/appbar.dart';
import '../../../../../common/widget/productCard/productCard.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_string.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      titles: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          ),

        ],
      ),
      action: [
        TCartCounterIcon(onPress: () {  }, iconColor: TColors.white,

        ),

      ],
    );
  }
}