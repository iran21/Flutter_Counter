import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  final String labelField;
  final IconData iconField;
  final String hintTextField;
  final Function fieldCallBack;
  final bool isObscured;

  const MyFormField(
      {this.labelField,
      this.iconField,
      this.hintTextField,
      this.fieldCallBack,
      this.isObscured = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            labelField,
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
        TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 14),
          cursorColor: Colors.white,
          obscureText: isObscured,
          onChanged: fieldCallBack,
          decoration: InputDecoration(
            prefixIcon: Icon(
              iconField,
              color: Colors.white,
            ),
            hintText: 'Enter your $labelField',
            hintStyle: TextStyle(color: Colors.white38),
            filled: true,
            fillColor: Color(0xff62a4ee),
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ],
    );
  }
}
