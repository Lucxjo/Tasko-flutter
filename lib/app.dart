import 'package:flutter/material.dart';
import 'package:tasko/views/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasko',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: SafeArea(child: HomeView()),
    );
  }
}