import 'package:bennett_app/features/attendance/attendance.dart';
import 'package:bennett_app/features/emergency/widgets/emergency.dart';
import 'package:bennett_app/features/food_menu/widgets/food_menu.dart';
import 'package:bennett_app/features/homepage/models/grid_button_info.dart';
import 'package:bennett_app/features/homepage/student/widgets/student_homepage.dart';
import 'package:bennett_app/features/hostel_requests/widgets/hostel_requests.dart';
import 'package:bennett_app/features/notifications/widgets/notifications.dart';
import 'package:bennett_app/features/results/widgets/results.dart';
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
          ),
          GridButtonInfo(
            title: 'Attendance',
            icon: Icons.fingerprint,
            onTap: (context) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const AttendancePage()),
              );
            },
          ),
          GridButtonInfo(
            title: 'Results',
            icon: Icons.book,
            onTap: (context) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const ResultsPage()),
              );
            },
          ),
          GridButtonInfo(
            title: 'Food Menu',
            icon: Icons.fastfood,
            onTap: (context) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const FoodMenuPage()),
              );
            },
          ),
          GridButtonInfo(
            title: 'Emergency',
            icon: Icons.emergency,
            onTap: (context) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const EmergencyPage()),
              );
            },
          ),
           GridButtonInfo(
            title: 'Notifications',
            icon: Icons.notification_important,
            onTap: (context) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const Notifications()),
              );
            },
          ),
           GridButtonInfo(
            title: 'Hostel Requests',
            icon: Icons.merge,
            onTap: (context) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const HostelRequests()),
              );
            },
          ),
        ]);
}
