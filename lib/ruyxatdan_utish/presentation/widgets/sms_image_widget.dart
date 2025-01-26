import 'package:flutter/material.dart';

class SmsImageWidget extends StatelessWidget {
  final String imagePath;

  SmsImageWidget({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        imagePath,
        height: 150,
        width: 150,
        fit: BoxFit.contain,
      ),
    );
  }
}