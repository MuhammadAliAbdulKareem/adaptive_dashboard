import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

import 'my_card_section.dart';
import 'transaction_history_section.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      margin: EdgeInsets.only(top: 40.0, bottom: 24),
      child: Column(
        children: [
          MyCardSection(),
          Divider(color: Color(0xffFFFFFF), height: 40.0),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}
