import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tasko/styles/colours.dart';
import 'package:tasko/components/intray_todo_widget.dart';
import 'package:uuid/uuid.dart';

class IntrayView extends StatefulWidget {
  @override
  _IntrayViewState createState() => _IntrayViewState();
}

class _IntrayViewState extends State<IntrayView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colour.darkGrey,
      child: ReorderableListView(
        padding: EdgeInsets.only(top: 180.0),
        children: getList(),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (newIndex > oldIndex) newIndex -=1;
            final Container item = getList().removeAt(oldIndex);
            getList().insert(newIndex, item);
          });
        },
      ),
    );
  }
}

List<Widget> getList() {
  List<IntrayToDo> list = [];
  for (int i = 0; i < 10; i++) {
    list.add(new IntrayToDo(title: "Hello", key: Key(Uuid().v4()),));
  }
  return list;
}