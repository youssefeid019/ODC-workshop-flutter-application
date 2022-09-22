import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getTextButton() {
  return TextButton(
    style: TextButton.styleFrom(primary: Colors.orange),
    onPressed: () {},
    child: Text(
      "Forget Password?",
      style: TextStyle(decoration: TextDecoration.underline),
    ),
  );
}
