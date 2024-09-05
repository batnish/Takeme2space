import 'package:flutter/material.dart';

class Squaretile extends StatelessWidget {
  final String imagePath;
  const Squaretile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(border: Border.all(color: Colors.grey,),
    borderRadius: BorderRadius.circular(16),
    color: Colors.white,
    ),
      child: Image.asset(
        imagePath,
        height: 60,
        ),

    );
  }
}