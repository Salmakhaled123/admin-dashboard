import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xffF1F1F1),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(children: [
            Text(
              'Monthly',
              style: AppStyles.styleMedium16(context),
            ),
            const SizedBox(
              width: 18,
            ),
            Transform.rotate(
                angle: -1.57079633,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xff064061),
                ))
          ]),
        )
      ],
    );
  }
}
