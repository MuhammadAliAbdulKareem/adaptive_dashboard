import 'package:flutter/material.dart';

import '../core/utils/app_styles.dart';
import 'custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Customer Name', style: AppStyles.styleSemiBold16),
        SizedBox(height: 12.0),
        CustomTextField(),
      ],
    );
  }
}
