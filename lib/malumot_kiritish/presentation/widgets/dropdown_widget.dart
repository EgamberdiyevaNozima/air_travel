import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  final List<String> items;
  final String hintText;

  DropdownWidget({required this.items, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: hintText,
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      ),
      items: items.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (value) {
      },
    );
  }
}