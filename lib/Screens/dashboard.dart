import 'package:flutter/material.dart';

import '../commons/collapsing_navigation_drawer.dart';
import '../theme.dart';

class Dashboard extends StatefulWidget {
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CollapsingNavigationDrawer(),
              Expanded(
                child: Container(
                  color: selectedColor,
                ),
              )
            ],
          ),
          // CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}
