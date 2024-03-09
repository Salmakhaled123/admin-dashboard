import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:flutter/material.dart';

import 'inactive_and_ active__all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {Key? key, required this.allExpensesItemModel, required this.isSelected})
      : super(key: key);
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(
            allExpensesItemModel: allExpensesItemModel,
          )
        : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
