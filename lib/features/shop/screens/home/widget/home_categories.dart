import 'package:flutter/cupertino.dart';
import 'package:foodzax/features/shop/screens/sub_catrgory/sub_category.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../common/widget/images_text/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImagesText(
              images: TImages.onboadin5,
              title: 'Shoes',
              onTap: () =>Get.to(()=>const SubCategoriesScreen()),
            );
          }),
    );
  }
}
