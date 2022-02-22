import 'package:bennett_app/config/theme/theme.dart';
import 'package:bennett_app/features/homepage/student/student_homepage.dart';
import 'package:bennett_app/features/timetable/timeline.dart';
import 'package:bennett_app/features/timetable/timetable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bennett App',
      theme: AppTheme.lightTheme,
      home: StudentHomePage(),
    );
  }
}
