import 'package:flutter/material.dart';

//colors
const kPrimaryBlueColor = Color(0xff6fabf4);
const kLightBlueColor = Color(0xff62a4ee);
const kPrimaryVineColor = Color(0xff721121);
const kLightVineColor = Color(0xffa31830);

//decoration
const kOutlinedDecoration = InputDecoration(
  labelText: 'Senha',
  labelStyle: TextStyle(color: Colors.white70),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white38),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
);

const kTextStyle1 =
    TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold);
