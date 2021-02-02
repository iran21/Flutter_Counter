import 'package:Counter/constantes.dart';
import 'package:Counter/widgets/button_widget.dart';
import 'package:Counter/widgets/formfield_widget.dart';
import 'package:flutter/material.dart';

class MySignupScreen extends StatelessWidget {
  static String id = 'MySignupScreen';
  @override
  Widget build(BuildContext context) {
    String varName, varPhoneNo, varEmail, varPassword;
    bool varConfirmPass;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryVineColor,
      body: Padding(
        padding: EdgeInsets.all(30.0),
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
                fieldCallBack: (value) {
                  varName = value;
                }),
            MyFormField(
                labelField: 'Phone No',
                iconField: Icons.phone_android_outlined,
                fieldCallBack: (value) {
                  varPhoneNo = value;
                }),
            MyFormField(
                labelField: 'Email',
                iconField: Icons.email_outlined,
                fieldCallBack: (value) {
                  varEmail = value;
                }),
            MyFormField(
              labelField: 'Password',
              iconField: Icons.vpn_key_outlined,
              isObscured: true,
              fieldCallBack: (value) {
                varPassword = value;
              },
            ),
            MyFormField(
                labelField: 'Confirm Password',
                iconField: Icons.vpn_key_outlined,
                fieldCallBack: (value) {
                  varConfirmPass = varPassword == value;
                }),
            MyButton(
              labelField: 'Register',
              onPressed: !varConfirmPass ? null : () {},
            )
          ],
        ),
      ),
    );
  }
}
