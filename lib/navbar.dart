import "package:flutter/material.dart";
import 'package:todo_app/models/global.dart';

import './containers/salver.dart';

class Navbar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(
          icon: new Icon(Icons.home),
        ),
      ],
      labelColor: Colors.transparent,
      unselectedLabelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.transparent,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(35);
}
