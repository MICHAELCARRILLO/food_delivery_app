import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/sections/store/hero.dart';

import '../sections/store/opctions.dart';
import '../sections/store/store_dishes.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> options1 = ["Dinner", "Launch", "Pasta", "Dessert", "Pizza"];
    List<String> options2 = [
      "Budget Meal",
      "Steak",
      "Burger",
      "Fast Foods",
      "Others"
    ];

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 106),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFFFF4317),
          child: const Stack(children: [
            SizedBox(
                height: 35, width: 35, child: Icon(FeatherIcons.shoppingCart)),
            Positioned(
                top: 1,
                right: 1,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 12, color: Color(0xFFFF4317)),
                  ),
                ))
          ]),
        ),
      ),
      backgroundColor: const Color(0xFFFFFCFC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomHero(),
            const SizedBox(
              height: 16,
            ),
            Options(options: options1),
            const SizedBox(
              height: 16,
            ),
            Options(options: options2),
            const StoreDishes(),
          ],
        ),
      ),
    );
  }
}
