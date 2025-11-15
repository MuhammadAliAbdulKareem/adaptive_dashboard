import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/latest_transaction_list_view.dart';

import 'quick_invoice_form.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleSemiBold16),
        SizedBox(height: 12.0),
        LatestTransactionListView(),
        Divider(height: 48.0, color: Color(0xffF1F1F1)),
        QuickInvoiceForm(),
      ],
    );
  }
}
