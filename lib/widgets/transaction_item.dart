import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

import '../models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionItem});
  final TransactionItemModel transactionItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xffFAFAFA),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(transactionItem.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(
          transactionItem.date,
          style: AppStyles.styleRegular16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionItem.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionItem.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
