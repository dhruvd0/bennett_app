import 'package:bennett_app/features/attendance/attendance_bar.dart';
import 'package:bennett_app/features/attendance/headings_bar.dart';
import 'package:flutter/material.dart';

/// Attendance Page, with a heading widget and AttendanceBars widget
/// to showcase attendance for diff subs

/// Can change subjects and details to cards for better UI
class AttendancePage extends StatelessWidget {
  ///
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: const Text('Attendance'),
        ),
        elevation: 0,
      ),
      body: Column(
        children: const [
          HeadingsBar(),
          SizedBox(
            height: 10,
          ),
          AttendanceBar()
        ],
      ),
    );
  }
}
