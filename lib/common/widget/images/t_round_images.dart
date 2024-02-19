import 'package:flutter/cupertino.dart';

import '../../../utils/constants/sizes.dart';

class TRoubdImage extends StatelessWidget {
  const TRoubdImage({
    super.key,
    this.width,
    this.height,
    required this.imageurl,
    this.applyImageRadius=true,
    this.border,
    this.fit=BoxFit.contain,
    this.padding,
    this.isNetworkImages=false,
    this.onPress,
    this.borderRadious=TSizes.md,
    this.backgroundColor,
  });

  final double? width, height;
  final String imageurl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final BoxFit? fit;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImages;
  final VoidCallback? onPress;
  final double borderRadious;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadious),
          border: border,color: backgroundColor,
        ),
        child: ClipRRect(
            borderRadius:applyImageRadius? BorderRadius.circular(borderRadious):BorderRadius.zero,
            child: Image(fit: fit,
                image: isNetworkImages?NetworkImage(imageurl): AssetImage(imageurl) as ImageProvider)
        ),
      ),
    );
  }
}