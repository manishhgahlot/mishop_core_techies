import 'package:core_techies/custom_widgets/Image_slider.dart';
import 'package:core_techies/custom_widgets/dots_indicator.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  final int index;

  const AddToCart({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: index);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blueGrey.shade100, // Blue-gray background color
            height: MediaQuery.of(context).size.height *
                0.4, // Increased background size
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                ImageSlider(pageController: pageController),
              ],
            ),
          ),
          DotsIndicator(
            pageController: pageController,
            itemCount: 3, // Adjust the number of dots according to your images
          ),
        ],
      ),
    );
  }
}
