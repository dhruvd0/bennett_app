import 'package:bennett_app/features/attendance/attendance_bar.dart';
import 'package:bennett_app/features/attendance/headings_bar.dart';
import 'package:bennett_app/utils/widgets/red_app_bar_scaffold.dart';
import 'package:flutter/material.dart';

/// Attendance Page, with a heading widget and AttendanceBars widget
/// to showcase attendance for diff subs

/// Can change subjects and details to cards for better UI
class AttendancePage extends StatelessWidget {
  ///
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RedAppBarScaffold(
      title: 'Attendance',
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
