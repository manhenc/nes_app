import 'package:flutter/material.dart';

Widget nesAppBar(context) => AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.blueAccent, Colors.white])),
      ),
    );
