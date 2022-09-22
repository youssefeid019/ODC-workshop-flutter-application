import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getCard(String title,  String sectionDate,
    String startDate, String endDate) {
  double titleSize = 30;
  double subTitleSize = 15;
  double miniTitle = 14;
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Card(
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                title,
                style: TextStyle(fontSize: titleSize),
              ),
              Row(
                children: [
                  Icon(Icons.timer),
                  Text(
                    "2 hrs",
                    style: TextStyle(fontSize: subTitleSize),
                  ),
                ],
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Section Date",
                        style: TextStyle(fontSize: subTitleSize),
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_month),
                          Text(
                            sectionDate,
                            style: TextStyle(fontSize: miniTitle),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Start date",
                        style: TextStyle(fontSize: subTitleSize),
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time_filled_rounded,
                              color: Colors.green),
                          Text(
                            startDate,
                            style: TextStyle(fontSize: miniTitle),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "End Date",
                        style: TextStyle(fontSize: subTitleSize),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.red,
                          ),
                          Text(
                            endDate,
                            style: TextStyle(fontSize: miniTitle),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
