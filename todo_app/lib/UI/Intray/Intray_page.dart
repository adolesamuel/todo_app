import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';

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
        padding: EdgeInsets.only(top: 150,),
        scrollDirection: Axis.vertical,
        children: getList(),
      ),
    );
  }
List<Widget> getList() {
  return [
    Container(
      height: 100,
      color: Colors.red,),

      Container(
      height: 100,
      color: Colors.green,),
    
  ];

}

}
