import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getNewsStack() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(color: Colors.grey, spreadRadius: 3),
      ],
    ),
    width: 350,
    child: Stack(
      fit: StackFit.loose,
      alignment: Alignment.center,
      children: [
        Container(
          child: Image.asset('assets/images/download.png'),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          top: 0.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("ODCs"),
              SizedBox(
                width: 180,
              ),
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Colors.orange),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      VerticalDivider(
                        width: 20,
                        thickness: 1,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.copy,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          child: Text("ODC Supports All Universe"),
          bottom: 5,
          left: 5,
        )
      ],
    ),
  );
}
