import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget getHomeCard(String svgPath, String cardName) {
  return GestureDetector(
    child: Container(
      width: 190,
      height: 120,
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 224, 224, 224),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    svgPath,
                    width: 40,
                    height: 40,
                    color: Color.fromARGB(255, 240, 144, 0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              cardName,
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )
          ],
        ),
      ),
    ),
  );
}
