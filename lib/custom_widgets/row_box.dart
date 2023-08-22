import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String text;

  const CustomBox({super.key, required this.text, required String Text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF003853), width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
