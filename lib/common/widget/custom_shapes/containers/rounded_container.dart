import 'package:flutter/cupertino.dart';
import 'package:foodzax/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';

class TRoudedContainer extends StatelessWidget {
  const TRoudedContainer({
    super.key,
    this.widht,
    this.height,
    this.radius=TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
    this.showborder=false,
    this.bordercolor=TColors.borderPrimary,
  });

  final double? widht;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final bool showborder;
  final Color bordercolor;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showborder?Border.all(color: bordercolor):null,
      ),
      child: child,
    );
  }
}
