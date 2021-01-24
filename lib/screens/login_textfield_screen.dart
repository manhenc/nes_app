import 'package:flutter/material.dart';

class LoginTextfieldScreen extends StatefulWidget {
  @override
  _LoginTextfieldScreenState createState() => _LoginTextfieldScreenState();
}

class _LoginTextfieldScreenState extends State<LoginTextfieldScreen> {
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
                child: _nesLogo(width: width, height: height),
              ),
              Padding(
                padding: EdgeInsets.only(top: 64),
                child: _textField(width: width, labelText: 'Username'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: _textField(width: width, labelText: 'Password'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: _backAndLoginRow(
                  width: width,
                  backTap: () {
                    Navigator.pop(context);
                  },
                  loginPressed: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _nesLogo({double width, double height}) => Container(
      width: width * 0.65,
      height: height * 0.40,
      child: Image.asset(
        'asset/nes_logo.png',
        fit: BoxFit.fill,
      ),
    );

Widget _textField({double width, String labelText}) => Container(
      width: width * 0.75,
      height: 45,
      child: TextField(
        onChanged: (value) => print(value),
        maxLines: 1,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );

Widget _loginButton({double width, Function onPressed}) => Container(
      width: width * 0.25,
      height: 30,
      child: RaisedButton(
        onPressed: onPressed,
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
    );

Widget _backGesture({Function onTap}) => GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Text(
        'back',
        style: TextStyle(color: Colors.blue),
      ),
    );

Widget _backAndLoginRow(
        {double width, Function backTap, Function loginPressed}) =>
    Container(
      width: width * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _backGesture(onTap: backTap),
          _loginButton(width: width, onPressed: loginPressed),
        ],
      ),
    );
