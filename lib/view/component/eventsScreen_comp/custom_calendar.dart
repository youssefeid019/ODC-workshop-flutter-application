import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

Widget getCalendar() {
  return SfCalendar(
    view: CalendarView.week,
    timeSlotViewSettings: TimeSlotViewSettings(timeIntervalHeight: -1),
    todayHighlightColor: Colors.orange,
    allowDragAndDrop: true,
    selectionDecoration: BoxDecoration(
      border: Border.all(color: Colors.orange, width: 2),
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      shape: BoxShape.rectangle,
    ),
  );
}
