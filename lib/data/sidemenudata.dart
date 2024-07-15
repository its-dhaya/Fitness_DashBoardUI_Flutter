import 'package:dashboard/model/menumode.dart';
import 'package:flutter/material.dart';

class Sidemenudata{
  final menu = const <MenuModel>[
    MenuModel(icon: Icons.home, title: 'Dashboard'),
    MenuModel(icon: Icons.person, title: 'Profile'),
    MenuModel(icon:Icons.run_circle, title: 'Excersice'),
    MenuModel(icon:Icons.settings, title: 'Settings'),
    MenuModel(icon:Icons.history, title: 'History'),
    MenuModel(icon:Icons.exit_to_app, title: 'Signout'),
  ];
}