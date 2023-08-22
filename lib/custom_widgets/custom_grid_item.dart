import 'package:flutter/material.dart';

class CustomGridViewItem extends StatelessWidget {
  final String imagePath;
  final String itemName;

  const CustomGridViewItem({
    Key? key,
    required this.imagePath,
    required this.itemName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Fixed width of each item
      height: 200, // Fixed height of each item
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity, // Image width fills the container
            height: 100, // Fixed height of the image
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              itemName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
