import 'package:flutter/material.dart';
import 'package:secday/view/page/FAQ_screen.dart';
import 'package:secday/view/page/Terms_Conditions_Screen.dart';

import 'package:secday/view/page/startScreen.dart';

import 'view_model/dataBase/network/dio_helper.dart';

void main() async {
  await DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}
