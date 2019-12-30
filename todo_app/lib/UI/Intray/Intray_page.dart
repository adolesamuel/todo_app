import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';
import 'package:todo_app/models/intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  IntrayPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    //return of home screen material
    return Container(
      color: darkGreyColor,
      child: ListView(
        padding: EdgeInsets.only(
          top: 300,
        ),
        scrollDirection: Axis.vertical,
        children: getList(),
      ),
    );
  }

  List<Widget> getList() {
    List<IntrayTodo> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(IntrayTodo(title: "YO",));
    }
    return list;
  }

}
