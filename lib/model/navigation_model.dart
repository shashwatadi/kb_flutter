import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Dashboard", icon: Icons.insert_chart),
  NavigationModel(title: "Resources", icon: Icons.work),
  NavigationModel(title: "Notifications", icon: Icons.notifications),
  NavigationModel(title: "Calendar", icon: Icons.calendar_today),
  NavigationModel(title: "Settings", icon: Icons.settings),
  NavigationModel(title: "Support", icon: Icons.help),
];
