import 'package:flutter/material.dart';

import '../constantes.dart';

class MyFormField extends StatelessWidget {
  final String labelField;
  final IconData iconField;
  final String hintTextField;
  final Function fieldCallBack;
  final bool isObscured;

  const MyFormField(
      {@required this.labelField,
      this.iconField,
      this.hintTextField,
      this.fieldCallBack,
      this.isObscured = false});

  @override
  Widget build(BuildContext context) {
    bool passconfirm = (labelField == 'Confirm Password');
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
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
              hintText:
                  passconfirm ? 'Confirm Password' : 'Enter your $labelField',
              hintStyle: TextStyle(color: Colors.white38),
              filled: true,
              fillColor: kLightVineColor,
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
    );
  }
}
