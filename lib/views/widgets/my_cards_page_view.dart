import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({Key? key, required this.pageController})
      : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) => const MyCard()));
  }
}
