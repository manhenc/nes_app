import 'package:flutter/material.dart';

Widget backGesture({Function onTap}) => GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Text(
        'back',
        style: TextStyle(color: Colors.blue),
      ),
    );
