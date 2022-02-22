import 'package:bennett_app/features/timetable/pick_day.dart';
import 'package:bennett_app/features/timetable/timeline.dart';
import 'package:flutter/material.dart';

class TimeTablePage extends StatelessWidget {
  const TimeTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Title(
            child: Text("Timetable"),
            color: Colors.white,
          ),
          elevation: 0,
        ),
        body: Container(
          child: Column(
            children: [PickDay(), TimeLine()],
          ),
        ));
  }
}
