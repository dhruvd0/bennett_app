import 'package:bennett_app/features/homepage/student/widgets/student_homepage.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Information for buttons in grid on [StudentHomePage]
class GridButtonInfo extends Equatable {
  ///
  const GridButtonInfo({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  ///
  final IconData icon;

  ///
  final Function(BuildContext context) onTap;

  ///
  final String title;

  @override
  List<Object> get props => [title, icon, onTap];
}
