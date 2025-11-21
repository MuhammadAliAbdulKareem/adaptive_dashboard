import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';

import 'transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionItemModel> transactions = [
    TransactionItemModel(
      title: 'Cash Withdrawal',
      amount: '\$20,129',
      date: '13 Apr, 2022 ',
      isWithdrawal: true,
    ),
    TransactionItemModel(
      title: 'Landing Page project',
      amount: '\$20,000',
      date: '13 Apr, 2022 at 3:30 PM ',
      isWithdrawal: false,
    ),
    TransactionItemModel(
      title: 'Juni Mobile App project',
      amount: '\$20,129',
      date: '13 Apr, 2022 at 3:30 PM ',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      shrinkWrap: true,
      // padding: const EdgeInsets.only(bottom: 12.0),
      itemBuilder: (context, index) =>
          TransactionItem(transactionItem: transactions[index]),
    );
  }
}
