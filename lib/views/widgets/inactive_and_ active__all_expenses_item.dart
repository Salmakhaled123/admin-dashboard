import 'package:flutter/material.dart';

import '../../models/all_expenses_item_model.dart';
import '../../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AllExpensesItemHeader(image: allExpensesItemModel.image),
        const SizedBox(
          height: 34,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        )
      ]),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xff4EB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AllExpensesItemHeader(
            imageColor: Colors.white,
            image: allExpensesItemModel.image,
            imageBackgroundColor:
                Colors.white.withOpacity(0.100000000149011612)),
        const SizedBox(
          height: 34,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16(context)
                .copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
