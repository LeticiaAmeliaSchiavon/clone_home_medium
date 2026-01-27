import 'package:clone_home_medium/pages/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Medium Home',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),
      home: HomeMediumPage(),
    );
  }
}
