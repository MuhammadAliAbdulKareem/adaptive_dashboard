import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer Name',
                textFieldLabel: 'Type Customer Name',
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                textFieldLabel: 'Type Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item Name',
                textFieldLabel: 'Type Item Name',
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: TitleTextField(title: 'Item Mount', textFieldLabel: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 24.0),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add More Details',
                titleColor: Color(0xff4EB7F2),
                backGroundColor: Colors.transparent,
              ),
            ),
            SizedBox(width: 24.0),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.title,
    this.backGroundColor,
    this.titleColor,
  });

  final String? title;
  final Color? backGroundColor, titleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: backGroundColor ?? const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: Text(
          title ?? 'Send Money',
          style: titleColor != null
              ? AppStyles.styleSemiBold18.copyWith(color: titleColor)
              : AppStyles.styleSemiBold18,
        ),
      ),
    );
  }
}
