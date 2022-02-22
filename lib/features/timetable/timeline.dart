import 'package:flutter/material.dart';

///
// TODO(rohit0110): Add a description for this widget
class TimeLine extends StatefulWidget {
  ///
  const TimeLine({Key? key}) : super(key: key);

  @override
  TimeLineState createState() => TimeLineState();
}

///
class TimeLineState extends State<TimeLine> {
  ///
  // TODO(rohit0110): Add a description for this list, see : https://dart-lang.github.io/linter/lints/public_member_api_docs.html
  final classList = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
    'Class 6',
    'Class 7',
    'Class 8',
    'Class 9',
    'Class 10',
    'Class 11',
    'Class 12'
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: classList.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(classList[index]),
            ),
          );
        },
      ),
    );
  }
}
