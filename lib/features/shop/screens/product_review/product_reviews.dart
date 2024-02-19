import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/features/shop/screens/product_review/widgets/user_review.dart';
import 'package:foodzax/utils/constants/sizes.dart';

import '../../../../common/widget/productCard/rating/ratings_indicator.dart';
import '../product_details/widget/overal_product_rating.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(titles: Text('Review & Rating'),),

      ///body
      body: SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('A rating of something is a score or measurement of how good or popular it is. ... a value-for-money rating of ten out of ten. The president approval rating at its lowest point since he took office'),
            const SizedBox(height: TSizes.spaceBtwItems,),

            ///overall Product
            const OverAllProductRating(),
           const TRatingIndicator(rating: 4.5,),
            Text('12,569',style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: TSizes.spaceBtwSection,),
            ///user Review
            const USerRivewCard(),
            const USerRivewCard(),
            const USerRivewCard(),
            const USerRivewCard(),

          ],
        ),
      ),
      ),
    );
  }
}


