import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getDropDown(
    List<DropdownMenuItem<String>> list, String value, String cubValue) {
  return DropdownButtonFormField(
    
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.orange, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.orange, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.orange, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    items: list,
    
    onChanged: (String? data) {
      if (data == "Male") {
        cubValue = "m";
        print(cubValue + "zeby mangoooo");
      } else {
        cubValue = "f";
      }
      value = data!;
    },
    value: value,
    elevation: 16,
  );
}
