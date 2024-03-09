import 'package:admin_dashboard/models/transaction_model.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({Key? key, required this.transactionModel})
      : super(key: key);
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
          trailing: Text(
            transactionModel.amount,
            style: AppStyles.styleSemiBold20(context).copyWith(
                color: transactionModel.isWithdrawal
                    ? const Color(0xffF3735E)
                    : const Color(0xff7DD97B)),
          ),
          subtitle: Text(
            transactionModel.date,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
          title: Text(
            transactionModel.title,
            style: AppStyles.styleSemiBold16(context),
          )),
    );
  }
}
