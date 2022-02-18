import 'package:flutter/material.dart';

class StudentHomePage extends StatelessWidget {
  StudentHomePage({Key? key}) : super(key: key);
  final gridButtons = {'Time Table': Icons.calendar_today,'Attendance':Icons.note};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
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
              color: Colors.green,
            ),
            SizedBox(
              height: 50,
            ),
            Flexible(
              child: GridView.count(
                crossAxisCount: 3,
                children: gridButtons.keys
                    .map((key) => Column(
                          children: [
                            Icon(
                              gridButtons[key],
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(key),
                          ],
                        ))
                    .toList(),
              ),
            )
          ]),
    );
  }
}
