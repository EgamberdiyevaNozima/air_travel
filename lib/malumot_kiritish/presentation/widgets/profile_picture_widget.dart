import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePictureWidget extends StatefulWidget {
  @override
  State<ProfilePictureWidget> createState() => _ProfilePictureWidgetState();
}

class _ProfilePictureWidgetState extends State<ProfilePictureWidget> {
  File? file;

  Future<void> pickImage(ImageSource source) async {
    final ImagePicker imagePicker = ImagePicker();
    var image = await imagePicker.pickImage(source: source);

    if (image != null) {
      setState(() {
        file = File(image.path);
      });
    } else {
      print("Rasm yoq");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ElevatedButton(
            onPressed: () => pickImage(ImageSource.gallery),
            child:
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
              backgroundImage:
              AssetImage("TravelAssets/images/offers/offers_5.jpg"),
            )
        ),
        ElevatedButton(
            onPressed: () => pickImage(ImageSource.camera),
            child:
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.edit,
                size: 15,
                color: Colors.white,
              ),
            )
        ),
      ],
    );
  }
}











