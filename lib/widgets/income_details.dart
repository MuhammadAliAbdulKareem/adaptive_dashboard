import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_item_model.dart';

import 'income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  final List<IncomeDetailsItemModel> incomeDetailsItemModel = const [
    IncomeDetailsItemModel(
      value: 40,
      color: Color(0xff208CC8),
      title: 'Design Service',
    ),
    IncomeDetailsItemModel(
      value: 25,
      color: Color(0xff4EB7F2),
      title: 'Design Product',
    ),
    IncomeDetailsItemModel(
      value: 20,
      color: Color(0xff064061),
      title: 'Product Royalty',
    ),
    IncomeDetailsItemModel(value: 22, color: Color(0xffDDDDDD), title: 'Other'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: incomeDetailsItemModel
          .map((element) => IncomeDetailsItem(incomeDetailsItemModel: element))
          .toList(),
    );

    // ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: incomeDetailsItemModel.length,
    //   itemBuilder: (context, index) => IncomeDetailsItem(
    //     incomeDetailsItemModel: incomeDetailsItemModel[index],
    //   ),
    // );
  }
}
