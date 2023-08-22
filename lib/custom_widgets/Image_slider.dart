import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final PageController pageController;

  const ImageSlider({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/items/item_0.png',
      'assets/items/item_1.png',
      'assets/items/item_2.png',
    ];

    return PageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: imagePaths.length,
      itemBuilder: (context, imageIndex) {
        return Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topCenter,
          child: Image.asset(
            imagePaths[imageIndex],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
