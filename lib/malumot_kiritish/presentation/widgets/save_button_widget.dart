import 'package:flutter/material.dart';

class SaveButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  SaveButtonWidget({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text("Saqlash"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        minimumSize: Size(double.infinity, 50),
      ),
    );
  }
}