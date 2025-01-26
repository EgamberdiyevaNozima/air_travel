import 'package:flutter/material.dart';

class PhoneInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: "Telefon raqam",
        border: OutlineInputBorder(),
      ),
    );
  }
}