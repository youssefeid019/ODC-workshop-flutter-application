import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getTextFormFieldAuth(
    {required String label,
    required bool isPassword,
    required TextEditingController controllerValue}) {
  return TextFormField(
    obscureText: isPassword == true ? true : false,
    controller: controllerValue,
    decoration: InputDecoration(
        suffixIcon: isPassword == true
            ? Icon(
                Icons.visibility_off,
                color: Colors.orange,
              )
            : null,
        suffixIconColor: Colors.red,
        labelStyle: TextStyle(color: Colors.orange),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: label,
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(20))
        //(borderRadius: BorderRadius.circular(20))
        ),
  );
}
