import 'package:flutter/material.dart';
import 'package:tasko/styles/colours.dart';

class IntrayView extends StatefulWidget {
  @override
  _IntrayViewState createState() => _IntrayViewState();
}

class _IntrayViewState extends State<IntrayView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colour.darkGrey,
      child: ListView(
        padding: EdgeInsets.only(top: 180.0),
        children: getList(),
      ),
    );
  }
}

List<Widget> getList() {
  return [
    Container(
      margin: EdgeInsets.all(8),
      height: 100,
      color: Colour.red,
    ),
    Container(
      margin: EdgeInsets.all(8),
      height: 100,
      color: Colour.red,
    ),
    Container(
      margin: EdgeInsets.all(8),
      height: 100,
      color: Colour.red,
    )
  ];
}