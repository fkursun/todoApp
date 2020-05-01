import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';
import "./salver.dart";
import "./navbar.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(),
      home: MyHomePage(title: 'Todo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

void func() {}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.yellow,
      home: SafeArea(
          child: DefaultTabController(
        length: 3,
        child: new Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Stack(
            children: <Widget>[
              TabBarView(
                children: [
                  new Container(
                    color: darkGrey,
                  ),
                  new Container(
                    color: darkGrey,
                  ),
                  new Container(
                    color: darkGrey,
                  ),
                ],
              ),
              Salver(),
            ],
          ),
          appBar: Navbar(),
          backgroundColor: Colors.white,
        ),
      )),
    );
  }
}
