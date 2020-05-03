import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';

class Salver extends StatelessWidget {
  Function handleAddTask;
  Salver({this.handleAddTask});
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          color: Colors.white),
      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 50, top: 50),
              child: TextField(
                controller: myController,
                cursorColor: red,
                autofocus: true,
                autocorrect: false,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type something to add your list."),
              )),
          Transform.translate(
            offset: Offset(0, 28),
            child: Container(
                child: Align(
              child: FloatingActionButton(
                child: Icon(
                  Icons.add,
                  size: 50,
                ),
                backgroundColor: red,
                onPressed: () => handleAddTask(myController),
              ),
              alignment: Alignment.bottomCenter,
            )),
          ),
        ],
      ),
    );
  }
}
