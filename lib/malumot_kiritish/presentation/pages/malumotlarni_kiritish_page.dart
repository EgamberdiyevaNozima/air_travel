import 'package:flutter/material.dart';
import '../widgets/profile_picture_widget.dart';
import '../widgets/input_field_widget.dart';
import '../widgets/dropdown_widget.dart';
import '../widgets/save_button_widget.dart';

class MalumotlarniKiritishPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Ma'lumotlarni kiriting"),
      leading: BackButton(),
    ),
    body: Padding(
      padding:  EdgeInsets.all(17.0),
      child: Column(
        children: [
          ProfilePictureWidget(),
          SizedBox(height: 20),
          InputFieldWidget(labelText: "Ismingiz"),
          SizedBox(height: 10),
          InputFieldWidget(labelText: "Familiyangiz"),
          SizedBox(height: 10),
          InputFieldWidget(
            labelText: "+998 77 777-07-77",
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 10),
          DropdownWidget(
            items: ["Toshkent", "Andijon", "Farg'ona", "Buxoro"],
            hintText: "Viloyatingiz",
          ),
          SizedBox(height: 20),
          SaveButtonWidget(
            onPressed: () {
            },
          ),
        ],
      ),
    ),
  );
}
}