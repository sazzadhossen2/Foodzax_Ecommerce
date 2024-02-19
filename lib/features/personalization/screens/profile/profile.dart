import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/appbaer/appbar.dart';
import 'package:foodzax/common/widget/images/t_circular_image.dart';
import 'package:foodzax/common/widget/texts/section_heading.dart';
import 'package:foodzax/features/personalization/screens/profile/widget/profile_menue.dart';
import 'package:foodzax/utils/constants/image_strings.dart';
import 'package:foodzax/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const TAppBar(
        showBackArrow: true,
        titles: Text('Profile'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                  const TCircularImage(image: TImages.profile,width: 80,height: 80,),
                    TextButton(onPressed: (){}, child:const Text('Change Profile Picture')),
                  ],
                ),
              ),
             ///Details
              const SizedBox(height: TSizes.spaceBtwItems/2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              ///Heading profile info
              const TSectionHeading(title: 'Profile Information',showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenue(title: 'name', value: 'Sazzad Hossen', onTap: () {  },),
              TProfileMenue(title: 'User name', value: 'sazzad', onTap:(){}),


              const SizedBox(height: TSizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///Heading personal info
              const TSectionHeading(title: 'Personal Information',showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenue(title: 'User ID', value: '538273', onTap: (){},icon: Iconsax.copy,),
              TProfileMenue(title: 'E-mail', value: 'sazzadhossen@gmail.com', onTap: (){}),
              TProfileMenue(title: 'Phone Number', value: '01887905213', onTap: (){}),
              TProfileMenue(title: 'Gender', value: 'Male', onTap: (){}),
              TProfileMenue(title: 'Date of Birth', value: '10 Oct, 1994', onTap: (){}),


              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(child: TextButton(onPressed: (){}, child: const Text('Close Account',style: TextStyle(color: Colors.red),)))




            ],
          ),
        ),
      ),
    );
  }
}

