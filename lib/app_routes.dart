import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/menu-option.dart';
import 'package:flutter_widgets/screens/buttons_screen.dart';
import 'package:flutter_widgets/screens/cards_screen.dart';
import 'package:flutter_widgets/screens/colum_rows_screen.dart';

class Routes {
  final menu = <MenuOption>[
    MenuOption(
      title: 'Buttons',
      route: '/buttons',
      screen: ButtonsScreen(),
      icon: Icons.radio_button_checked,
    ),
    MenuOption(
      title: 'Cards',
      route: '/cards',
      screen: CardsScreen(),
      icon: Icons.card_membership,
    ),
    MenuOption(
      title: 'Columns & rows',
      route: '/columnsrow',
      screen: ColumnRowsScreen(),
      icon: Icons.grid_3x3,
    ),
  ];
}
