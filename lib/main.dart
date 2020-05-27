import 'package:flutter/material.dart';
import 'package:glitter_animation/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glitter Animation',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}