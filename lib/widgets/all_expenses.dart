import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_header.dart';

import 'all_expenses_item_list_view.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          CustomHeader(title: 'All Expenses'),
          SizedBox(height: 16.0),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
