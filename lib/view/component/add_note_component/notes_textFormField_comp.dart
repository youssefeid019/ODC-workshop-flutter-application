import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getNotesTextFormField(String label,String hint) {
  return TextFormField(
    decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.black),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: label,
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        )
        //(borderRadius: BorderRadius.circular(20))
        ),
  );
}
