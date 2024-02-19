import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helpers.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class TCuponCode extends StatelessWidget {
  const TCuponCode({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return TRoudedContainer(
      showborder: true,
      backgroundColor:dark?TColors.dark:TColors.white ,
      padding: const EdgeInsets.only(top: TSizes.sm,bottom: TSizes.sm,right: TSizes.sm,left: TSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none
              ),
            ),
          ),
          ///Button
          SizedBox(
            width: 80,
            child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: dark?TColors.white.withOpacity(0.5):TColors.dark.withOpacity(0.5),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  side: BorderSide(color: Colors.grey.withOpacity(0.1)),
                ),
                child:const Text('Apply')
            ),
          ),


        ],
      ),
    );
  }
}
