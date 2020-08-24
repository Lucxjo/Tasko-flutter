import 'package:flutter/material.dart';
import 'package:tasko/styles/colours.dart';
import 'package:tasko/components/intray_todo_widget.dart';
import 'package:uuid/uuid.dart';

class IntrayView extends StatefulWidget {
  @override
  _IntrayViewState createState() => _IntrayViewState();
}

class _IntrayViewState extends State<IntrayView> {

  List<IntrayToDo> todoList = [];

  Widget _buildListTile(BuildContext context, IntrayToDo item) {
    return ListTile(
      key: Key(Uuid().v4()),
      title: item,
    );
  }

  @override
  Widget build(BuildContext context) {
    todoList = getList();
    return Container(
      color: Colour.darkGrey,
      child: ReorderableListView(
        padding: EdgeInsets.only(top: 180.0),
        children: todoList.map((IntrayToDo item) => _buildListTile(context, item)).toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            IntrayToDo item = todoList[oldIndex];
            todoList.remove(item);
            todoList.insert(newIndex, item);
          });
        },
      ),
    );
  }

  List<Widget> getList() {
  for (int i = 0; i < 10; i++) {
    todoList.add(new IntrayToDo(title: "Hello", key: Key(Uuid().v4()),));
  }
  return todoList;
}
}

