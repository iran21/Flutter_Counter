import 'package:flutter/material.dart';

class MySocialButton extends StatelessWidget {
  final String path;
  final double size;

  const MySocialButton({this.path, this.size});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RawMaterialButton(
        onPressed: () {},
        shape: CircleBorder(),
        fillColor: Colors.white,
        constraints: BoxConstraints(
            minHeight: 60.0, minWidth: 60.0, maxHeight: 60.0, maxWidth: 60.0),
        child: Container(
          child: Image.asset(
            path,
            height: size ?? 90.0,
            width: size ?? 90.0,
          ),
        ),
      ),
    );
  }
}
