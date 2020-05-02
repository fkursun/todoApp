import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';

class Salver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: EdgeInsets.only(bottom: 50),
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
            child: Text(
              "Intray",
              style: salverTitle,
              textAlign: TextAlign.start,
            ),
          ),
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
                onPressed: () => print("hello"),
              ),
              alignment: Alignment.bottomCenter,
            )),
          ),
        ],
      ),
    );
  }
}
