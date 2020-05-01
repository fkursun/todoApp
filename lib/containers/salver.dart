import 'package:flutter/material.dart';
import 'package:todo_app/components/salver.dart';
import 'package:todo_app/models/global.dart';
import 'package:todo_app/navbar.dart';

class SalverContainer extends StatefulWidget {
  @override
  _SalverContainerState createState() => _SalverContainerState();
}

class _SalverContainerState extends State<SalverContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Salver(),
        Container(
          height: 300,
          child: ListView(
            children: getList(),
          ),
        )
      ],
    ));
  }

  List<Widget> getList() {
    return [
      Container(
        color: Colors.red,
        height: 100,
        child: Text("HEllo"),
      ),
      Container(
        color: Colors.white,
        height: 100,
        child: Text("HEllo"),
      ),
      Container(
        color: Colors.red,
        height: 100,
        child: Text("HEllo"),
      )
    ];
  }
}
