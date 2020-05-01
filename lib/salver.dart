import "package:flutter/material.dart";

import "./models/global.dart";

class Salver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              "Intray",
              style: salverTitle,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            child: Align(
              child: FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Colors.red,
                onPressed: () => print("hello"),
              ),
              alignment: Alignment.bottomCenter,
            ),
          )
        ],
      ),
    );
  }
}