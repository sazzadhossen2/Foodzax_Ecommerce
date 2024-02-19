import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/t_circular_image.dart';
class TUserProfile extends StatelessWidget {
  const TUserProfile({
    super.key, required this.onPress,
  });
 final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.profile,
        height: 50,
        width: 50,
        padding: 0,
      ),
      title: Text(
        'Sazzad Hossen',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'sazzadhossen@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed:onPress,
        icon: const Icon(
          Iconsax.edit,
          color: TColors.white,
        ),
      ),
    );
  }
}
