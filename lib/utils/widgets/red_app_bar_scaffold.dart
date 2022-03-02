import 'package:flutter/material.dart';

/// Custom scaffold with red app bar, a title, and the default [Scaffold.body]
class RedAppBarScaffold extends StatelessWidget {
  ///
  const RedAppBarScaffold({
    required this.title,
    required this.body,
  });

  /// Title to show in white font, red background
  final String title;

  ///
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: Text(title),
        ),
        elevation: 0,
      ),
      body: body,
    );
  }
}
