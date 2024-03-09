import 'package:flutter/material.dart';

import '../../models/item_details_model.dart';
import '../../utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({Key? key, required this.itemDetailsModel})
      : super(key: key);
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context)
            .copyWith(color: const Color(0xff208CC8)),
      ),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: itemDetailsModel.color,
        ),
      ),
    );
  }
}
