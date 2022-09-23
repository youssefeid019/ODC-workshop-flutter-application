import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MainTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Orange",
          style: TextStyle(
              color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 35)),
      Text(" Digital Center",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30)),
    ],
  );
}
