import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      home: Store(),
    );
  }
}
