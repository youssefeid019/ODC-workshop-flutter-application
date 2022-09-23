import 'package:secday/view/page/signUpScreen.dart';

import '../component/core/MainTitle_comp.dart';
import '../component/startScreen_comp/indecatorBar.dart';

import 'package:flutter/material.dart';



class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _startPageState();
}

class _startPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        this.context,
        MaterialPageRoute(
          builder: (context) =>  SignUp(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         MainTitle(),
          SizedBox(
            height: 30,
          ),
         getIndecator(),
        ],
      )),
    );
  }
}
