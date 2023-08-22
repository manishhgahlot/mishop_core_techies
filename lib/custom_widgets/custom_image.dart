import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final String imagePath;

  const CustomImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.asset(
        imagePath,
        width: 260,
        height: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}
