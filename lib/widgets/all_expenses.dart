import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';

import 'all_expenses_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16.0),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: ShapeDecoration(
        color: Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: child,
    );
  }
}
