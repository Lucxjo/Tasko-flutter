import 'package:flutter/material.dart';
import 'package:tasko/models/task.dart';
import 'package:tasko/styles/colours.dart';
import 'package:tasko/components/intray_todo_widget.dart';
import 'package:uuid/uuid.dart';

class IntrayView extends StatefulWidget {
  @override
  _IntrayViewState createState() => _IntrayViewState();
}

class _IntrayViewState extends State<IntrayView> {

  List<Task> todoList = [];

  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(Uuid().v4()),
      title: IntrayToDo(key: Key(item.id), title: item.title,),
    );
  }

  @override
  Widget build(BuildContext context) {
    todoList = getList();
    return Container(
      color: Colour.darkGrey,
      child: Theme(
        data: ThemeData(canvasColor: Colors.transparent),
        child: ReorderableListView(
          padding: EdgeInsets.only(top: 180.0),
          children: todoList.map((Task item) => _buildListTile(context, item)).toList(),
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) newIndex--;
              Task item = todoList.removeAt(oldIndex);
              todoList.insert(newIndex, item);
            });
          },
        ),
      ),
    );
  }

  List<Task> getList() {
    for (int i = 0; i < 10; i++) {
      todoList.add(new Task(Uuid().v4(), "Hi", false));
    }
    return todoList;
  }
}

