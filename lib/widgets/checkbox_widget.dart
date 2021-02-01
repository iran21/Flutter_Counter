import 'package:Counter/constantes.dart';
import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            height: 17.0,
            width: 17.0,
            color: Colors.white,
            child: Checkbox(
              value: isChecked,
              onChanged: (bool newValue) {
                setState(() {
                  isChecked = newValue;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Remember me',
              style: kTextStyle1,
            ),
          )
        ],
      ),
    );
  }
}
