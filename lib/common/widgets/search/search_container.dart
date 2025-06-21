import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../utils/helper_functions/helper_function.dart';

class ASearchContainer extends StatelessWidget {
  const ASearchContainer({
    super.key,
    required this.text,
    this.icon = const Icon(Iconsax.search_normal_1, color: AColors.black),
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 0),
    this.backgroundColor,
    this.borderRadius = 32.0,
    this.textSizeFactor = 1,
    this.textColor,
    this.iconColor,
    this.spaceBetweenIconText = 10,
    this.subTitle,
  });

  final String text;
  final String? subTitle;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final double borderRadius, textSizeFactor;
  final double? spaceBetweenIconText;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: AHelperFunctions.screenWidth(context),
          padding: const EdgeInsets.symmetric(
            horizontal: ASizes.md,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            // If show Background = true then how background else show transparent
            color:
                showBackground
                    ? backgroundColor
                    : darkMode
                    ? AColors.dark
                    : Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
            border: showBorder ? Border.all(color: AColors.grey) : null,
          ),
          child: Row(
            children: [
              icon,
              SizedBox(width: spaceBetweenIconText),
              Text(
                text,
                style: Theme.of(
                  context,
                ).textTheme.headlineSmall!.apply(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
