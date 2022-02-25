import 'package:bennett_app/config/theme/theme.dart';
import 'package:bennett_app/features/homepage/student/widgets/student_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

///
class MyApp extends StatelessWidget {
  ///
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Bennett App',
        theme: AppTheme.lightTheme,
        home: const StudentHomePage(),
      ),
    );
  }
}
