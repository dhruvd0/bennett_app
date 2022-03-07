import 'dart:convert';

import 'package:equatable/equatable.dart';

enum MealType { breakfast, lunch, snacks, dinner }

class FoodMenu extends Equatable {
  final MealType mealType;
  final List<String> foodNames;
  FoodMenu({
    required this.mealType,
    required this.foodNames,
  });
  

  FoodMenu copyWith({
    MealType? mealType,
    List<String>? foodNames,
  }) {
    return FoodMenu(
      mealType: mealType ?? this.mealType,
      foodNames: foodNames ?? this.foodNames,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mealType': mealType.name,
      'foodNames': foodNames,
    };
  }

  factory FoodMenu.fromMap(Map<String, dynamic> map) {
    return FoodMenu(
      mealType:(map['mealType']),
      foodNames: List<String>.from(map['foodNames'] ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'FoodMenu(mealType: $mealType, foodNames: $foodNames)';

  @override
  List<Object> get props => [mealType, foodNames];
}
