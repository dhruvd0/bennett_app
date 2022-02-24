import 'package:flutter/material.dart';

//Widget containing List of Subjects and their respective attendances
class AttendanceBar extends StatefulWidget {
  const AttendanceBar({Key? key}) : super(key: key);

  @override
  _AttendanceBarState createState() => _AttendanceBarState();
}

class _AttendanceBarState extends State<AttendanceBar> {
  //list that will contain widgets with attendance information
  final attendanceList = [
    "Attendance 1",
    "Attendance 2",
    "Attendance 3",
    "Attendance 4"
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: attendanceList.length,
          itemBuilder: (context, index) {
            return Card(
                color: Colors.blue[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text(attendanceList[index]),
                ));
          }),
    );
  }
}
