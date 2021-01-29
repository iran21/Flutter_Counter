import 'package:Counter/widgets/button_widget.dart';
import 'package:Counter/widgets/checkbox_widget.dart';
import 'package:Counter/widgets/formfield_widget.dart';
import 'package:flutter/material.dart';

class MyLoginScreen extends StatelessWidget {
  final bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6fabf4),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
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
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                ),
              ),
            ),
            MyCheckBox(),
            MyButton(
              labelField: 'LOGIN',
            ),
            Text(
              '-OR-',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(),
                SocialButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 30.0,
        child: IconButton(
          icon: Icon(
            Icons.face,
            size: 45.0,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
