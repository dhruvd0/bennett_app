import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:bennett_app/features/food_menu/models/menu.dart';

final foodMenuNotifier = new ChangeNotifierProvider<FoodMenuNotifier>(
    create: (_) =>
        FoodMenuNotifier(selectedMealType: MealType.breakfast, foodMenu: []));

class FoodMenuNotifier extends ChangeNotifier {
  final MealType selectedMealType;
  final List<FoodMenu> foodMenu;
  FoodMenuNotifier({
    required this.selectedMealType,
    required this.foodMenu,
  });



  void getFoodMenu(){

    
  }
}
