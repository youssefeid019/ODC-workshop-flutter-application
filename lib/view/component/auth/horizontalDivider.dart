import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getHorizontalDivider() {
  return Row(
    children: [
      Expanded(
        child: Divider(
          color: Colors.grey,
          indent: 2,
          endIndent: 8,
          height: 1,
        ),
      ),
      Text("OR"),
      Expanded(
        child: Divider(
          color: Colors.grey,
          indent: 8,
          endIndent: 2,
          height: 1,
        ),
      ),
    ],
  );
}
