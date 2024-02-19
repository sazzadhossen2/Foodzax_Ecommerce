import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helpers.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit=BoxFit.cover,
    required this.image,
    this.isNetworkimage=false,
    this.overlayercolor,
    this.backgroundColor,
     this.width=56,
    this.height=56,
    this.padding=TSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkimage;
  final Color? overlayercolor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
       color:backgroundColor??( THelperFunction.isDarkMode(context) ? TColors.white : TColors.black),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image:isNetworkimage?NetworkImage(image): AssetImage(image)as ImageProvider,
     // color: overlayercolor,
        fit: fit,
      ),
    );
  }
}
