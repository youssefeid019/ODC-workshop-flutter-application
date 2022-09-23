import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

PreferredSizeWidget FAQ_App_Bar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
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
