import 'package:bennett_app/features/timetable/pick_day.dart';
import 'package:bennett_app/features/timetable/timeline.dart';
import 'package:flutter/material.dart';

/// Page consisting of 2 widgets.
/// PickDay to choose the day, TimeLine to display the data for that said day
class TimeTablePage extends StatelessWidget {
  ///
  const TimeTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: const Text('Timetable'),
        ),
        elevation: 0,
      ),
      body: Column(
        children: const [PickDay(), TimeLine()],
      ),
    );
  }
}
