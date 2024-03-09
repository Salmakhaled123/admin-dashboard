import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({Key? key, required this.isActive})
      : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
          color: isActive ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}
