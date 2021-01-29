import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String labelField;
  MyButton({this.labelField});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      minWidth: 500.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Text(
            labelField,
            style: TextStyle(
                color: Color(0xff6fabf4),
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
        ),
      ),
    );
  }
}
