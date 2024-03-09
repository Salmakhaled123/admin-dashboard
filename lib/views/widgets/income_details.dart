import 'package:admin_dashboard/models/item_details_model.dart';
import 'package:flutter/material.dart';

import 'items_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({Key? key}) : super(key: key);
  static const items = [
    ItemDetailsModel(
        title: 'Design service', value: '40%', color: Color(0xff208CC8)),
    ItemDetailsModel(
        title: 'Design product', value: '25%', color: Color(0xff4EB7F2)),
    ItemDetailsModel(
        title: 'Product royalti', value: '20%', color: Color(0xff064061)),
    ItemDetailsModel(title: 'Other', value: '22%', color: Color(0xffE2DECD))
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
    ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ItemDetails(itemDetailsModel: items[index]);
        });
  }
}
