import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= SizeConfig.desktop && width <= 1785
        ? const DetailedIncomeChart()
        : const Row(
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 40),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
