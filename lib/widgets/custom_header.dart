import 'package:flutter/material.dart';

import '../core/utils/app_styles.dart';
import 'range_options.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyles.styleSemiBold20(context)),
        const RangeOptions(),
      ],
    );
  }
}
