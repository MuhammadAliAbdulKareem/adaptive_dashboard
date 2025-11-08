import 'package:flutter/material.dart';

import '../core/utils/assets_manager.dart';
import '../models/all_expenses_item_model.dart';
import 'all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      imgPath: AssetsManager.balance,
      date: "April 2022",
      title: "Balance",
      amount: 20.129,
    ),
    AllExpensesItemModel(
      imgPath: AssetsManager.income,
      date: "April 2022",
      title: "Income",
      amount: 20.129,
    ),
    AllExpensesItemModel(
      imgPath: AssetsManager.expenses,
      date: "April 2022",
      title: "Expenses",
      amount: 20.129,
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.0,
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(index),
            child: AllExpensesItem(
              itemModel: item,
              isSelected: selectedIndex == index,
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    if (index != selectedIndex) {
      setState(() {
        selectedIndex = index;
      });
    }
  }
}
