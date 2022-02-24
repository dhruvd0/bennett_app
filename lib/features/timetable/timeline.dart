import 'package:flutter/material.dart';

///
// Based on selected day, will show list of classes
class TimeLine extends StatefulWidget {
  ///
  const TimeLine({Key? key}) : super(key: key);

  @override
  TimeLineState createState() => TimeLineState();
}

///
class TimeLineState extends State<TimeLine> {
  ///
  // List that will contain the final information to be displayed on the timetable page, filled with constants for now
  final classList = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
    'Class 6',
    'Class 7',
    'Class 8',
    'Class 9',
    'Class 10',
    'Class 11',
    'Class 12'
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: classList.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue[300],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(classList[index]),
            ),
          );
        },
      ),
    );
  }
}
