import 'package:flutter/material.dart';
import 'package:foodzax/common/widget/custom_shapes/containers/circular_containers.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import '../../../utils/constants/colors.dart';

class SChoiceChips extends StatelessWidget {
  const SChoiceChips({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunction.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label:isColor?const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar: isColor
            ? TCircularContainer(
                widht: 50,
                height: 50,
                backgroundColor: THelperFunction.getColor(text)!)
            : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? THelperFunction.getColor(text) : null,
      ),
    );
  }
}
