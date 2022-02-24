import 'package:bennett_app/features/homepage/models/grid_button_info.dart';
import 'package:bennett_app/features/homepage/student/widgets/student_homepage.dart';
import 'package:bennett_app/features/timetable/timetable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///
final homepageNotifier =
    StateNotifierProvider<HomepageNotifier, List<GridButtonInfo>>(
  (_) => HomepageNotifier(),
);

/// Notifier which handles state of [StudentHomePage]
class HomepageNotifier extends StateNotifier<List<GridButtonInfo>> {
  ///
  HomepageNotifier()
      : super([
          GridButtonInfo(
            title: 'Timetable',
            icon: Icons.calendar_today,
            onTap: (context) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const TimeTablePage()),
              );
            },
          )
        ]);
}
