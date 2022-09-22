import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getLoadingIndecator() {
  return Center(
    child: Container(
      width: 80,
      height: 80,
      margin: EdgeInsets.all(50),
      child: CircularProgressIndicator(
        backgroundColor: Colors.grey,
        color: Colors.orange,
        strokeWidth: 5,
      ),
    ),
  );
}
