import 'dart:developer';

import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

import 'income_section_body.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return const CustomBackgroundContainer(
        child: Column(
      children: [IncomeSectionHeader(), IncomeSectionBody()],
    ));
  }
}
