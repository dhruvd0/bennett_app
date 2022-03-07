import 'package:bennett_app/features/food_menu/widgets/food_items.dart';
import 'package:bennett_app/utils/widgets/red_app_bar_scaffold.dart';
import 'package:flutter/material.dart';

///
class FoodMenuPage extends StatelessWidget {
  ///
  const FoodMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RedAppBarScaffold(
      title: 'Food Menu',
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: DefaultTabController(
            length: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TabBar(tabs: [
                  Tab(
                    text: 'Breakfast',
                    
                  ),
                  Tab(
                    text: 'Lunch',
                  ),
                  Tab(
                    text: 'Snacks',
                  ),
                ]),
                Flexible(child: TabBarView(children: [SizedBox(), SizedBox(), SizedBox()]))
              ],
            )),
      ),
    );
  }
}
