import 'package:flutter/material.dart';

class ProfilePictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.grey[300],
          backgroundImage: AssetImage('TravelAssets/images/offers/offers_5.jpg'),
        ),
        CircleAvatar(
          radius: 15,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.edit,
            size: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
