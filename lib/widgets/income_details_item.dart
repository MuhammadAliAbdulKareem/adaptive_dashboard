import 'package:flutter/material.dart';

import '../core/utils/app_styles.dart';
import '../models/income_details_item_model.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel});
  final IncomeDetailsItemModel incomeDetailsItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: incomeDetailsItemModel.color,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      title: Text(incomeDetailsItemModel.title, style: AppStyles.styleMedium16),
      trailing: Text(
        '${incomeDetailsItemModel.value}%',
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
