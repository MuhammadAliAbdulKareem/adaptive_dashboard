import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xff4EB7F2),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppStyles.styleRegular16.copyWith(color: Color(0xffAAAAAA)),
        filled: true,
        fillColor: Color(0xffFAFAFA),

        contentPadding: EdgeInsets.all(20.0),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: Color(0xffFAFAFA)),
    );
  }
}
