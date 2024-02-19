import 'package:flutter/material.dart';
import 'package:foodzax/utils/constants/colors.dart';

class TSettingsMenueTile extends StatelessWidget {
  const TSettingsMenueTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.trilling,
        this.onTap
      });

  final IconData icon;
  final String title, subTitle;
  final Widget? trilling;
 final VoidCallback ?onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,size: 28,color: TColors.primary,),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subTitle,style: Theme.of(context).textTheme.labelMedium,),
      trailing: trilling,
      onTap: onTap,
    );
  }
}
