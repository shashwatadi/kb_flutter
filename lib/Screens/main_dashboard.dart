import 'package:flutter/material.dart';

import '../widget/card_tile.dart';

class MainDashboard extends StatefulWidget {
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CardTile(
        iconBgColor: Colors.orange,
        cardTitle: 'Classes',
        icon: Icons.school,
        subText: 'Till date',
        mainText: '2',
      ),
    );
  }
}
