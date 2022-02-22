import 'package:flutter/material.dart';

/// Homepage for a Student
class StudentHomePage extends StatelessWidget {
  ///
  StudentHomePage({Key? key}) : super(key: key);

  /// <String,Icon> data for buttons in the grid
  final gridButtons = {
    'Time Table': Icons.calendar_today,
    'Attendance': Icons.note
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: const Text('Bennett University'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 200,
            color: Colors.blue[300],
          ),
          const SizedBox(
            height: 50,
          ),
          Flexible(
            child: GridView.count(
              crossAxisCount: 3,
              children: gridButtons.keys
                  .map(
                    (key) => Column(
                      children: [
                        Icon(
                          gridButtons[key],
                          color: Colors.black,
                          size: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(key),
                      ],
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
