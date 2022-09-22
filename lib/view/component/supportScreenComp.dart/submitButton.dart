import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getSubmitButton() {
  return ElevatedButton(
                  child: Text("Submit"),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: Size(350, 50)),
                );
}
