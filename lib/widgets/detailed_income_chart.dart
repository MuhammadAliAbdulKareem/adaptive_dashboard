import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: PieChart(getChartData()),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0.0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, ieTouchResponse) {
          activeIndex =
              ieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleBold16(context).copyWith(
            color: activeIndex == 0 ? const Color(0xff064061) : Colors.white,
          ),
          value: 40,
          title: activeIndex == 0 ? 'Design Service' : '40%',
          color: const Color(0xff208CC8),
          radius: activeIndex == 0 ? 50.0 : 40.0,
          showTitle: true,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.4 : null,
          title: activeIndex == 1 ? 'Design Product' : '25%',
          titleStyle: AppStyles.styleBold16(context).copyWith(
            color: activeIndex == 1 ? const Color(0xff064061) : Colors.white,
          ),
          value: 25,
          radius: activeIndex == 1 ? 50.0 : 40.0,
          color: const Color(0xff4EB7F2),
          showTitle: true,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          title: activeIndex == 2 ? 'Product Royalty' : '20%',
          titleStyle: AppStyles.styleBold16(context).copyWith(
            color: activeIndex == 2 ? const Color(0xff064061) : Colors.white,
          ),
          value: 20,
          radius: activeIndex == 2 ? 50.0 : 40.0,
          color: const Color(0xff064061),
          showTitle: true,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          title: activeIndex == 3 ? 'Other' : '22%',
          titleStyle: AppStyles.styleBold16(context).copyWith(
            color: activeIndex == 3 ? const Color(0xff064061) : Colors.white,
          ),
          value: 22,
          radius: activeIndex == 3 ? 50.0 : 40.0,
          color: const Color(0xffE2DECD),
          showTitle: true,
        ),
      ],
    );
  }
}
