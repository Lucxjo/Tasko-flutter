import 'package:flutter/material.dart';
import 'package:tasko/views/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasko',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: HomeView(),
    );
  }
}