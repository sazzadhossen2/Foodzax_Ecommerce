import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class TRatingIndicator extends StatelessWidget {
  const TRatingIndicator({
    super.key, required this.rating,
  });
final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: TColors.grey,
        itemBuilder: (_,__){
          return const Icon(Iconsax.star1,color: TColors.primary,);
        });
  }
}
