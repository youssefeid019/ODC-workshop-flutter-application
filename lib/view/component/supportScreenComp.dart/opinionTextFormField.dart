import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getOpinionTextFormField() {
  return TextFormField(
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "What's making you happy ?",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))
                    //(borderRadius: BorderRadius.circular(20))
                    ),
                maxLines: 10,
                minLines: 6,
              );
}
