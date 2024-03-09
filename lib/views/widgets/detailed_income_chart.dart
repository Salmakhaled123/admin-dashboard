import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({Key? key}) : super(key: key);

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
              radius: activeIndex == 0 ? 60 : 50,
              value: 40,
              title: activeIndex == 0 ? 'Design Service' : '40%',
              titleStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: activeIndex == 0 ? null : Colors.white),
              color: const Color(0xff208CC8)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,
              radius: activeIndex == 1 ? 60 : 50,
              value: 25,
              title: activeIndex == 1 ? 'Design product' : '25%',
              titleStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: activeIndex == 1 ? null : Colors.white),
              color: const Color(0xff4EB7F2)),
          PieChartSectionData(
            radius: activeIndex == 2 ? 60 : 50,
            titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            value: 20,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.2 : null,
            radius: activeIndex == 3 ? 60 : 50,
            value: 22,
            title: activeIndex == 3 ? 'Other' : '22%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
                color:
                    activeIndex == 3 ? const Color(0xff064061) : Colors.white),
            color: const Color(0xffE2DECD),
          )
        ]);
  }
}
