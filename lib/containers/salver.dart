import 'package:flutter/material.dart';
import 'package:todo_app/components/salver.dart';
import 'package:todo_app/models/global.dart';
import 'package:todo_app/components/task.dart';

class SalverContainer extends StatefulWidget {
  @override
  _SalverContainerState createState() => _SalverContainerState();
}

class _SalverContainerState extends State<SalverContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Salver(),
        Container(
          padding: EdgeInsets.only(top: 50),
          height: MediaQuery.of(context).size.height - 216,
          child: ListView(
            children: getList(),
          ),
        )
      ],
    );
  }

  List<SalverTask> getList() {
    var list = <SalverTask>[];
    for (var i = 0; i < 20; i++) {
      list.add(SalverTask(
        title: "Hello world",
      ));
    }
    return list;
  }
}
