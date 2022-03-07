import 'package:flutter/material.dart';

/// Widget to list food course  items for a particular time of the day
class FoodItems extends StatelessWidget {
  ///
  const FoodItems({Key? key, required this.foodNames}) : super(key: key);

  ///
  final List<String> foodNames;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: foodNames
          .map(
            (food) => ListTile(
              title: Text(food),
            ),
          )
          .toList(),
    );
  }
}
