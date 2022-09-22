import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secday/view/page/loginScreen.dart';
import 'package:secday/view/page/supportScreen.dart';

Widget getSettingsListTile(String title, BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 10),
    decoration:
        BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
    child: ListTile(
      onTap: () {
        if (title == "Log Out") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
          const snackBar = SnackBar(
            content: Text('logged out'),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else if (title == "Support") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SupportPage()),
          );
        }
      },
      title: Text(title),
      trailing: Icon(Icons.arrow_forward),
    ),
  );
}
