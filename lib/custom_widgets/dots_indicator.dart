import 'package:flutter/material.dart';

class DotsIndicator extends AnimatedWidget {
  final PageController pageController;
  final int itemCount;

  const DotsIndicator({
    super.key,
    required this.pageController,
    required this.itemCount,
  }) : super(listenable: pageController);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == pageController.page?.round()
                  ? Colors.blue
                  : Colors.grey,
            ),
          ),
        );
      }),
    );
  }
}
