import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/menu-option.dart';
import 'package:flutter_widgets/screens/buttons_screen.dart';
import 'package:flutter_widgets/screens/home_screen.dart';

class Routes {
  final menu = <MenuOption>[
    MenuOption(
      title: 'Home',
      route: '/home',
      screen: HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      title: 'Buttons',
      route: '/button',
      screen: ButtonsScreen(),
      icon: Icons.radio_button_checked,
    ),
  ];
}
