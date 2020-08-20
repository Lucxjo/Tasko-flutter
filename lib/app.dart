import 'package:flutter/material.dart';
import 'package:tasko/styles/colours.dart';
import 'package:tasko/views/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasko',
      theme: ThemeData(
        primaryColorDark: Colors.grey[300],
        primaryColor: Colors.white,
        accentColor: Colour.red
      ),
      home: HomeView(),
    );
  }
}