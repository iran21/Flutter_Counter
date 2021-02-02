import 'package:Counter/screens/signup_screen.dart';
import 'package:Counter/widgets/button_widget.dart';
import 'package:Counter/widgets/checkbox_widget.dart';
import 'package:Counter/widgets/formfield_widget.dart';
import 'package:Counter/widgets/socialbutton_widget.dart';
import 'package:flutter/material.dart';

import '../constantes.dart';

class MyLoginScreen extends StatelessWidget {
  static String id = 'MyLoginScreen';
  final bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryVineColor,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: kTextStyle1.copyWith(letterSpacing: 1.0, fontSize: 30.0),
            ),
            SizedBox(
              height: 40.0,
            ),
            MyFormField(
              labelField: 'E-mail',
              iconField: Icons.email_outlined,
            ),
            SizedBox(
              height: 20.0,
            ),
            MyFormField(
              labelField: 'Password',
              iconField: Icons.vpn_key_outlined,
              fieldCallBack: (value) {},
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: kTextStyle1,
                ),
              ),
            ),
            MyCheckBox(),
            MyButton(
              labelField: 'LOGIN',
              onPressed: () {},
            ),
            Text(
              '-OR-',
              style: kTextStyle1,
              textAlign: TextAlign.center,
            ),
            Text(
              'Sign In with',
              style: kTextStyle1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MySocialButton(
                  path: 'images/facebook.jpg',
                ),
                MySocialButton(path: 'images/google.png', size: 40.0),
              ],
            ),
            //REVIEW como alinhar dois containers: um no centro da tela e o outro no final dela?
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, MySignupScreen.id);
              },
              child: Text(
                'sign Up',
                style: kTextStyle1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
