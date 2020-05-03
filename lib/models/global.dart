import "package:flutter/material.dart";

Color darkGrey = new Color(0xff212128);
Color red = new Color(0xffe33e57);

TextStyle salverTitle = new TextStyle(
    fontFamily: "Avenir",
    fontWeight: FontWeight.bold,
    color: darkGrey,
    fontSize: 45);
TextStyle taskTitle = new TextStyle(
    fontFamily: "Avenir",
    fontWeight: FontWeight.w600,
    fontSize: 25,
    color: Colors.white);

TextStyle taskTitleCompleted = new TextStyle(
    fontFamily: "Avenir",
    fontWeight: FontWeight.w600,
    fontSize: 25,
    decoration: TextDecoration.lineThrough,
    color: Colors.white);
