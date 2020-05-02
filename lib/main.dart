import 'package:flutter/material.dart';
import 'package:todo_app/containers/salver.dart';
import 'package:todo_app/models/global.dart';
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: DefaultTabController(
        length: 1,
        child: new Scaffold(
          body: Stack(
            children: <Widget>[
              TabBarView(
                children: [
                  new Container(
                      color: darkGrey,
                      child: Column(
                        children: <Widget>[SalverContainer()],
                      )),
                ],
              ),
            ],
          ),
          appBar: Navbar(),
          backgroundColor: Colors.white,
        ),
      )),
    );
  }
}
