import 'package:flutter/material.dart';

Widget textField({double width, String labelText}) => Container(
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
