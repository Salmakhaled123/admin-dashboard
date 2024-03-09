import 'package:flutter/cupertino.dart';

class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;
  static late double width, height;
  // for tablet and mobile
  // but in desktop the increasing and decreasing in real time
  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
