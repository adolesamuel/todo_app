import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';

class IntrayTodo extends StatelessWidget{
  //value for space in between margins
  final double buttonspace = 15;

  final String title;

  IntrayTodo({this.title});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: buttonspace, left: buttonspace, right: buttonspace,),
      padding: EdgeInsets.all(buttonspace),
      height: 100,
      decoration: BoxDecoration(
        color: redColor,
        borderRadius: BorderRadius.all(Radius.circular(buttonspace)),
        boxShadow: [
          new BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10.0,
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          Radio(

          ),
          Column(
            children: <Widget>[
              Text(title, style: darkTodoTitle,)
            ],

          )
        ],
      ),
    );
  }

}