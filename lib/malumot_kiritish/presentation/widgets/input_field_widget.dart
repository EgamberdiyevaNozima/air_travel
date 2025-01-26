import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;

  InputFieldWidget({required this.labelText, this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      ),
    );
  }
}