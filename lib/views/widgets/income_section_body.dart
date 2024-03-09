import 'package:admin_dashboard/utils/size_config.dart';
import 'package:admin_dashboard/views/widgets/detailed_income_chart.dart';
import 'package:flutter/material.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1920
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
