import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';

class SalverTask extends StatelessWidget {
  final String title;
  SalverTask({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        color: red,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Radio(),
          Text(
            title,
            style: taskTitle,
          )
        ],
      ),
    );
  }
}
