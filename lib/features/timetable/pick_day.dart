import 'package:flutter/material.dart';

// Widget with seven days displayed on them,
// gives option to choose day on the basis of which the time table will be shown
class PickDay extends StatefulWidget {
  ///
  const PickDay({Key? key}) : super(key: key);

  @override
  PickDayState createState() => PickDayState();
}

class PickDayState extends State<PickDay> {
  final weekList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  // based on change of index, different data will be shown
  int selectedWeekIndex = 0;
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
            selectedWeekIndex = index;
          }),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selectedWeekIndex == index
                  ? Colors.grey.withOpacity(0.1)
                  : null,
            ),
            child: Text(
              weekList[index],
              style: TextStyle(
                color: selectedWeekIndex == index ? Colors.black : Colors.grey,
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 5,
        ),
        itemCount: 7,
      ),
    );
  }
}
