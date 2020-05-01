import "package:flutter/material.dart";

class Navbar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(
          icon: new Icon(Icons.home),
        ),
        Tab(
          icon: new Icon(Icons.rss_feed),
        ),
        Tab(
          icon: new Icon(Icons.perm_identity),
        )
      ],
      labelColor: Colors.red,
      unselectedLabelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.transparent,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(35);
}
