import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget getTermsAppBar(BuildContext context) {
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
      "Terms & Conditions",
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    ),
    centerTitle: true,
  );
}
