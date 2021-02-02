import 'package:Counter/constantes.dart';
import 'package:Counter/widgets/button_widget.dart';
import 'package:Counter/widgets/formfield_widget.dart';
import 'package:flutter/material.dart';

class MySignupScreen extends StatelessWidget {
  static String id = 'MySignupScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryBlueColor,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: kTextStyle1.copyWith(fontSize: 20.0),
            ),
            MyFormField(
              labelField: 'Full Name',
              iconField: Icons.person_outline,
            ),
            MyFormField(
              labelField: 'Phone No',
              iconField: Icons.phone_android_outlined,
            ),
            MyFormField(
              labelField: 'Email',
              iconField: Icons.email_outlined,
            ),
            MyFormField(
              labelField: 'Password',
              iconField: Icons.vpn_key_outlined,
              isObscured: true,
              fieldCallBack: (value) {},
            ),
            MyFormField(
              labelField: 'Confirm Password',
              iconField: Icons.vpn_key_outlined,
            ),
            MyButton(
              labelField: 'Register',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
