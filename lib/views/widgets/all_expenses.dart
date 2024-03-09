import 'package:admin_dashboard/views/widgets/all_expenses_items_list_view.dart';
import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(children: [
        AllExpensesHeader(),
        SizedBox(
          height: 16,
        ),
        AllExpensesItemsListView()
      ]),
    );
  }
}
