import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

PreferredSizeWidget FAQ_App_Bar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context, true);
      },
    ),
    title: Text(
      "FAQ",
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    ),
    centerTitle: true,
  );
}
