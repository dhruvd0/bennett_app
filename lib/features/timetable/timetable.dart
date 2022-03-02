import 'package:bennett_app/features/timetable/pick_day.dart';
import 'package:bennett_app/features/timetable/timeline.dart';
import 'package:bennett_app/utils/widgets/red_app_bar_scaffold.dart';
import 'package:flutter/material.dart';

/// Page consisting of 2 widgets.
/// PickDay to choose the day, TimeLine to display the data for that said day
class TimeTablePage extends StatelessWidget {
  ///
  const TimeTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RedAppBarScaffold(
      title: 'Timetable',
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [PickDay(), TimeLine()],
      ),
    );
  }
}
