import 'package:flutter/material.dart';

class SubmitButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  SubmitButtonWidget({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        minimumSize: Size(double.infinity, 50),
      ),
    );
  }
}