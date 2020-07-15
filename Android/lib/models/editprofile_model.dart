import 'package:flutter/material.dart';
class EditProfile_model {
  final String id;
  final String name;
  final String imagePath;
  final String number;
  final String gmail;


    EditProfile_model({
    this.id,
    this.name,
    this.imagePath,
    this.number,
    this.gmail,
    
    
  });
  
}
class EditProfileTextBox extends StatelessWidget {
  const EditProfileTextBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
      hintStyle: TextStyle(
        color: Color(0xFFFB415B),
        fontSize: 16.0,
      ),
        border: OutlineInputBorder(
        borderRadius:BorderRadius.circular(20.0),
        ),
      

      ),
    );
  }
}