import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getSupTextFormField(String labetText, bool isName) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
    child: TextFormField(
      decoration: InputDecoration(
          prefixIcon: isName == true ? Icon(Icons.person) : Icon(Icons.email),
          labelStyle: TextStyle(color: Colors.grey),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: labetText,
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10))
          //(borderRadius: BorderRadius.circular(20))
          ),
    ),
  );
}
