import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget getAppBarWithFilter(String title, BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.orange,
      ),
      onPressed: () {
        Navigator.pop(context, true);
      },
    ),
    // new IconButton(
    //   icon: new Icon(Icons.arrow_back),
    //   onPressed: (){Navigator.pop(context,true)}
    // ),
    actions: const [
      Icon(
        Icons.filter_alt,
        color: Colors.orange,
      )
    ],
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}
