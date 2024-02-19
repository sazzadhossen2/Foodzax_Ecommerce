import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodzax/features/shop/controllers/home_controller.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:get/get.dart';
import '../../../../../common/widget/custom_shapes/containers/circular_containers.dart';
import '../../../../../common/widget/images/t_round_images.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index)),
            items: banner.map((url) => TRoubdImage(imageurl: url)).toList()),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banner.length; i++)
                  TCircularContainer(
                    widht: 20,
                    height: 4,
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? TColors.primary
                        : TColors.grey,
                    margin: const EdgeInsets.only(right: 10),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
