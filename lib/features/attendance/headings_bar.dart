import 'package:flutter/material.dart';

//Widget with headings for the information below them
class HeadingsBar extends StatelessWidget {
  const HeadingsBar({Key? key}) : super(key: key);

  final TextStyle styling = const TextStyle(
      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            "Subject",
            style: styling,
          ),
          Text(
            "L",
            style: styling,
          ),
          Text("T", style: styling),
          Text(
            "P",
            style: styling,
          ),
          Text(
            "Total",
            style: styling,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      height: 50,
      color: Colors.black,
    );
  }
}
