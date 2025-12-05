import 'package:flutter/material.dart';

import '../core/utils/app_styles.dart';
import 'custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.title,
    required this.textFieldLabel,
  });
  final String title, textFieldLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleSemiBold16(context)),
        const SizedBox(height: 12.0),
        CustomTextField(labelText: textFieldLabel),
      ],
    );
  }
}
