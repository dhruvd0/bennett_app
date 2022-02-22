import 'package:flutter/material.dart';

class PickDay extends StatefulWidget {
  const PickDay({Key? key}) : super(key: key);

  @override
  _PickDayState createState() => _PickDayState();
}

class _PickDayState extends State<PickDay> {
  final weekList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => setState(() {
                  selectedIndex = index;
                }),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selectedIndex == index
                          ? Colors.grey.withOpacity(0.1)
                          : null),
                  child: Text(
                    weekList[index],
                    style: TextStyle(
                        color: selectedIndex == index
                            ? Colors.black
                            : Colors.grey),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 5,
              ),
          itemCount: 7),
    );
  }
}
