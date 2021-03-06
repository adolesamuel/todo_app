import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';
import 'package:todo_app/models/intray_todo_widget.dart';
import 'package:todo_app/models/task.dart';

class IntrayPage extends StatefulWidget {
  IntrayPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _IntrayPageState createState() => _IntrayPageState();
}


class _IntrayPageState extends State<IntrayPage> {
  List<Task> taskList = [];
  @override
  Widget build(BuildContext context) {
    //return of home screen material
    taskList = getList();
    return Container(
      color: darkGreyColor,
      child: _buildReorderableListSimple(context),
      // child: ListView(
      //   padding: EdgeInsets.only(
      //     top: 300,
      //   ),
      //   scrollDirection: Axis.vertical,
      //   children: getList(),
      // ),
    );
  }

  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskId),
      title: IntrayTodo(
        title: item.title,
      ),
    );
  }

  Widget _buildReorderableListSimple(BuildContext context) {
    return Theme(
      //to change the color when highlighted to transparent.
        data: ThemeData(canvasColor: Colors.transparent,),
          child: ReorderableListView(
          padding: EdgeInsets.only(top: 300.0,),
          children: taskList.map((Task item) => _buildListTile(context, item)).toList(),
          onReorder: (oldIndex, newIndex) {
            setState(() {
              Task item = taskList[oldIndex];
              taskList.remove(item);
              taskList.insert(newIndex, item);
            });
          }),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Task item = taskList.removeAt(oldIndex);
      taskList.insert(newIndex, item);
    });
  }

  List<Task> getList() {
    for (int i = 0; i < 10; i++) {
      taskList.add(Task("my first todo"+i.toString(), false, i.toString()));
    }
    return taskList;
  }
}
