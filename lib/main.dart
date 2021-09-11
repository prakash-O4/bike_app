import 'package:bike_app/presentation/book_ride/book_ride.dart';
import 'package:bike_app/presentation/bottom_animation/home_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookRide(),
      debugShowCheckedModeBanner: false,
    );
  }
}
