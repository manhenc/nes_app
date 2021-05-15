import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login_textfield_screen.dart';
import 'package:flutter_app/shared_widgets/nes_logo.dart';
import 'package:flutter_app/shared_widgets/text_field.dart';

class registrationScreen extends StatefulWidget {
  static String id = 'registration_screen';
  @override
  _registrationScreenState createState() => _registrationScreenState();
}

class _registrationScreenState extends State<registrationScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.25],
            colors: [Colors.blue, Colors.white],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 190),
                child: nesLogo(width: 0.5 * width, height: 0.5 * height),
              ),
              Padding(
                padding: EdgeInsets.only(top: 64),
                child: textField(width: width, labelText: 'Username'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: textField(width: width, labelText: 'Password'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: textField(width: width, labelText: 'Email'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: textField(width: width, labelText: 'LinkedIn'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: textField(width: width, labelText: 'Phone'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginTextfieldScreen.id);
                },
                color: Colors.black,
                disabledColor: Colors.black,
                splashColor: Colors.transparent,
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
