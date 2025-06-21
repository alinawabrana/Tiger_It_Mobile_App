import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class AGridLayout extends StatelessWidget {
  const AGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 120,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: ASizes.gridViewSpacing,
        crossAxisSpacing: ASizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
