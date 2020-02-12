import 'package:flutter/material.dart';

import '../commons/collapsing_navigation_drawer.dart';
import '../model/globals.dart';
import '../theme.dart';
import 'main_dashboard.dart';
import 'resources.dart';

class Dashboard extends StatefulWidget {
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  refresh() {
    setState(() {});
  }

  Widget getWidget(selectedTab) {
    switch (selectedTab) {
      case 0:
        return MainDashboard();
        break;
      case 1:
        return Resources();
        break;
      // case 2:
      //   return Notifications();
      //   break;
      // case 3:
      //   return Calendar();
      //   break;
      // case 4:
      //   return Settings();
      //   break;
      // case 5:
      //   return Help();
      //   break;
      default:
        return MainDashboard();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CollapsingNavigationDrawer(
                notifyParent: refresh,
              ),
              Expanded(
                child: getWidget(currentSelectedIndex),
              ),
            ],
          ),
          // CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}
