import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/common/widget/brandCard/T_brand_card.dart';
import 'package:foodzax/common/widget/productCard/sortable/sortable.dart';
import 'package:foodzax/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(titles: Text('Nike'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSection,),
              TSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
