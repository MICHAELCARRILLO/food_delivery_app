import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/dish.dart';

import '../../widgets/custom_dish.dart';

class StoreDishes extends StatelessWidget {
  const StoreDishes({super.key});

  @override
  Widget build(BuildContext context) {
    List<Dish> dishes = listOfDishes();

    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 200,
            crossAxisCount: 2,
            mainAxisSpacing: 23,
            crossAxisSpacing: 24),
        itemCount: dishes.length,
        itemBuilder: (context, index) {
          return CustomDish(
            dish: dishes[index],
          );
        },
      ),
    );
  }
}
