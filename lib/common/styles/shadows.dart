import 'package:flutter/cupertino.dart';
import 'package:foodzax/utils/constants/colors.dart';

class TShadowsStyle{
  static final verticalShadow=BoxShadow(
    color: TColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset:const Offset(0,2)
  );

  static final horizontalShadow=BoxShadow(
      color: TColors.darkerGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset:const Offset(0,2)
  );
}