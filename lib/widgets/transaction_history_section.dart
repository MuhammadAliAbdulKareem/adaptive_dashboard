import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transaction_history_list_view.dart';

import 'transaction_history_header.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20.0),
        Text('13 April 2022', style: AppStyles.styleMedium16),
        SizedBox(height: 16.0),
        TransactionHistoryListView(),
      ],
    );
  }
}
