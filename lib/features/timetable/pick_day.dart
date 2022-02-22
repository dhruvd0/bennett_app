import 'package:flutter/material.dart';

class PickDay extends StatefulWidget {
  const PickDay({Key? key}) : super(key: key);

  @override
  _PickDayState createState() => _PickDayState();
}

class _PickDayState extends State<PickDay> {
  final weekList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  var selected_index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => setState(() {
                  selected_index = index;
                }),
                child: Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected_index == index
                          ? Colors.grey.withOpacity(0.1)
                          : null),
                  child: Text(
                    weekList[index],
                    style: TextStyle(
                        color: selected_index == index
                            ? Colors.black
                            : Colors.grey),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 5,
              ),
          itemCount: 7),
    );
  }
}
