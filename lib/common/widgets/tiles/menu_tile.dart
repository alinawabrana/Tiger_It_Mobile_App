import 'package:ali_nawab_rana_test/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helper_functions/helper_function.dart';

class AMenuTile extends StatelessWidget {
  const AMenuTile({super.key, required this.title, this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium!.apply(
          color: darkMode ? AColors.white : AColors.black,
        ),
      ),
      trailing: Row(
        children: [
          Text('More items', style: TextStyle()),
          SizedBox(width: ASizes.spaceBtwItems),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
      onTap: onTap,
    );
  }
}
